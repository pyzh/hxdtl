package hxdtl.parser;

typedef Ast =
{
	body: Array<AstExpr>
}

enum AstExpr
{
	Text(s: String);

	StringLiteral(s: String);
	NumberLiteral(n: String);

	Variable(i: String);

	Attribute(i: String, v: AstExpr);

	If(cond: AstExpr, body: Array<AstExpr>);
	IfElse(cond: AstExpr, ifBody: Array<AstExpr>, elseBody: Array<AstExpr>);

	NullOp(e: AstExpr);
	UnOp(op: UnaryOperator, e: AstExpr);
	BinOp(op: BinaryOperator, e1: AstExpr, e2: AstExpr);
}

enum UnaryOperator
{
	Not;
}

enum BinaryOperator
{
	Greater;
	GreaterOrEqual;
	Less;
	LessOrEqual;
	Equal;
	NotEqual;
	And;
	Or;
}