package model.contract_detail;

public class ContractDetail {
    String contractDetailId;
    String quantity;
    String contractId;
    String attachServiceId;

    public ContractDetail(String quantity, String contractId, String attachServiceId) {
        this.quantity = quantity;
        this.contractId = contractId;
        this.attachServiceId = attachServiceId;
    }

    public ContractDetail(String contractDetailId, String quantity, String contractId, String attachServiceId) {
        this.contractDetailId = contractDetailId;
        this.quantity = quantity;
        this.contractId = contractId;
        this.attachServiceId = attachServiceId;
    }

    public String getContractDetailId() {
        return contractDetailId;
    }

    public void setContractDetailId(String contractDetailId) {
        this.contractDetailId = contractDetailId;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getContractId() {
        return contractId;
    }

    public void setContractId(String contractId) {
        this.contractId = contractId;
    }

    public String getAttachServiceId() {
        return attachServiceId;
    }

    public void setAttachServiceId(String attachServiceId) {
        this.attachServiceId = attachServiceId;
    }
}
