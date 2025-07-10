import json
from ansible.plugins.callback import CallbackBase

class CallbackModule(CallbackBase):
    CALLBACK_VERSION = 2.0
    CALLBACK_TYPE = 'stdout'
    CALLBACK_NAME = 'pretty_json'

    def _serialize_result(self, result):
        if isinstance(result, dict) and 'stdout' in result:
            try:
                result['stdout'] = json.dumps(json.loads(result['stdout']), indent=2)
            except:
                pass
        return result

    def v2_runner_on_ok(self, result, **kwargs):
        self._display.display(json.dumps(self._serialize_result(result._result), indent=2))