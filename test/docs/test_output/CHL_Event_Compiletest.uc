// Do not manually edit! This class is automatically generated by `make_docs.py`.
// It tests that the event listener templates generated by the docs script actually compile.
// Run the `makeDocs` task (or run the script manually) to refresh.
class CHL_Event_Compiletest extends Object;

static function EventListenerReturn OnNameOfTheEvent(Object EventData, Object EventSource, XComGameState GameState, Name EventID, Object CallbackObject)
{
	local XComHQPresentationLayer Pres;
	local XComLWTuple Tuple;
	local EMyEnum Enum1;
	local class<Actor> SomeClass;
	local bool bResult;
	local array<string> Labels;

	Pres = XComHQPresentationLayer(EventSource);
	Tuple = XComLWTuple(EventData);

	Enum1 = EMyEnum(Tuple.Data[0].i);
	SomeClass = class<Actor>(Tuple.Data[1].o);
	Labels = Tuple.Data[3].as;

	// Your code here

	Tuple.Data[1].o = SomeClass;
	Tuple.Data[2].b = bResult;
	Tuple.Data[3].as = Labels;

	return ELR_NoInterrupt;
}

