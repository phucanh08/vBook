import '../index.dart';

class AvoidHardCodedColors extends DartLintRule {
  const AvoidHardCodedColors() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_hardcoded_colors',
    problemMessage:
        'Avoid hard-coding colors, except for Colors.transparent, such as Color(0xFFFFFF) and Colors.white.\nPlease use \'AppColors\' instead',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    resolver.getResolvedUnitResult().then((value) =>
        value.unit.visitChildren(VariableAndArgumentVisitor(
          onVisitInstanceCreationExpression: (InstanceCreationExpression node) {
            if (node.argumentList.arguments.any((element) {
              if (element is NamedExpression) {
                return _isHardCoded(element.expression.toString());
              }

              return _isHardCoded(element.toString());
            })) {
              reporter.atNode(node, code);
            }
          },
          onVisitNamedExpression: (NamedExpression node) {
            if (_isHardCoded(node.expression.toString())) {
              reporter.atNode(node, code);
            }
          },
          onVisitVariableDeclaration: (VariableDeclaration node) {
            if (node.initializer != null &&
                _isHardCoded(node.initializer.toString())) {
              reporter.atNode(node, code);
            }
          },
          onVisitAssignmentExpression: (AssignmentExpression node) {
            if (_isHardCoded(node.rightHandSide.toString())) {
              reporter.atNode(node, code);
            }
          },
          onVisitConstructorFieldInitializer:
              (ConstructorFieldInitializer node) {
            if (_isHardCoded(node.expression.toString())) {
              reporter.atNode(node, code);
            }
          },
          onVisitSuperConstructorInvocation: (SuperConstructorInvocation node) {
            if (node.argumentList.arguments.any((element) {
              if (element is NamedExpression) {
                return _isHardCoded(element.expression.toString());
              }

              return _isHardCoded(element.toString());
            })) {
              reporter.atNode(node, code);
            }
          },
          onVisitConstructorDeclaration: (ConstructorDeclaration node) {
            if (node.parameters.parameterElements.any(
              (element) =>
                  element?.defaultValueCode != null &&
                  _isHardCoded(element!.defaultValueCode!),
            )) {
              reporter.atNode(node, code);
            }
          },
        )));
  }

  bool _isHardCoded(String color) {
    if (color == 'Colors.transparent') {
      return false;
    }

    if (color.startsWith('Color(') ||
        color.startsWith('Colors.') ||
        color.startsWith('Color.')) {
      return true;
    }

    return false;
  }
}
