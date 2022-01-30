abstract class Data {}

class Error implements Data {
  final String msg;
  Error(this.msg);
}
