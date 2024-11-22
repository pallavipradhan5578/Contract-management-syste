import '../models/contract.dart';

class ContractController {
  List<Contract> contracts = [];

  void addContract(Contract contract) {
    contracts.add(contract);
  }

  Contract getContractById(String id) {
    return contracts.firstWhere((contract) => contract.id == id);
  }
}
