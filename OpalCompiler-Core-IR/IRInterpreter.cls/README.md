I visit each IRInstruction in an IRMethod in order.  Each instruction sends its instruction message to me upon being visited.  See my 'instructions' method category for complete list of instructions.  Subclasses should override them.