module trial.settings;
import std.conv;

struct Settings {
/*
	bool colors;
	bool sort;
	bool bail;*/

	string[] reporters = [ "spec", "result" ];
}

string toCode(Settings settings) {
  return "Settings(" ~ settings.reporters.to!string ~ ")";
}

version(unittest) {
  import fluent.asserts;
}

@("Should be able to transform  the Settings to code.")
unittest
{
  Settings settings;

  settings.toCode.should.equal(`Settings(["spec", "result"])`);
}
