import '../enums/network_result_enums.dart';

typedef ValidatorFunction = String? Function(String?)?;
typedef SavedFunction = Function(String?)?;
typedef DoubleFunction = Function(double)?;

typedef NetworkCallBack = void Function(NetworkResultEnums result);
typedef JsonMap = Map<String, dynamic>;
