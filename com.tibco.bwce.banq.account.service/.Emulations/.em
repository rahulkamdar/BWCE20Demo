<?xml version="1.0" encoding="ASCII"?>
<emulation:EmulationData xmlns:emulation="http:///emulation.ecore" isBW="true" location="com.tibco.bwce.banq.account.service">
  <ProcessNode Id="com.tibco.bwce.banq.account.service.Activator" Name="com.tibco.bwce.banq.account.service.Activator" ModelType="BW" moduleName="com.tibco.bwce.banq.account.service">
    <Operation Name="onStartup" serviceName="ModuleActivator">
      <Inputs Id="com.tibco.bwce.banq.account.service_com.tibco.bwce.banq.account.service.Activator_onStartup_Request" Name="Request" isDefault="true"/>
    </Operation>
    <Operation Name="onShutdown" serviceName="ModuleActivator">
      <Inputs Id="com.tibco.bwce.banq.account.service_com.tibco.bwce.banq.account.service.Activator_onShutdown_Request" Name="Request" isDefault="true"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="com.tibco.bwce.banq.account.service.accounts" Name="com.tibco.bwce.banq.account.service.accounts" ModelType="BW" moduleName="com.tibco.bwce.banq.account.service">
    <Operation Name="get" serviceName="accounts">
      <Inputs Id="com.tibco.bwce.banq.account.service_com.tibco.bwce.banq.account.service.accounts_get_getInput" Name="getInput" isDefault="true"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForAllRegion" Name="com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForAllRegion" ModelType="BW" moduleName="com.tibco.bwce.banq.account.service">
    <Operation Name="callProcess" serviceName="com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForAllRegion">
      <Inputs Id="com.tibco.bwce.banq.account.service_com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForAllRegion_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForRegion" Name="com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForRegion" ModelType="BW" moduleName="com.tibco.bwce.banq.account.service">
    <Operation Name="callProcess" serviceName="com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForRegion">
      <Inputs Id="com.tibco.bwce.banq.account.service_com.tibco.bwce.banq.account.service.db.GetCustomerAccountDetailsForRegion_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS">
        <informations Name="input" nameSpace="http://www.example.org/GetCustomerSchema">
          <nameSpaces prefix="tns" nameSapce="http://www.example.org/GetCustomerSchema"/>
          <nameSpaces prefix="tns0" nameSapce="http://www.example.org/AccountSchema"/>
          <Parameter Name="tns:CustomerAccountDetails">
            <parameters Name="tns0:AccountDetails" isList="true">
              <parameters Name="tns0:AccountNumber" type="string" nameSpace="http://www.example.org/AccountSchema">
                <parent Name="AccountDetailsType" nameSpace="http://www.example.org/AccountSchema"/>
              </parameters>
              <parameters Name="tns0:Amount" type="string" nameSpace="http://www.example.org/AccountSchema">
                <parent Name="AccountDetailsType" nameSpace="http://www.example.org/AccountSchema"/>
              </parameters>
              <parameters Name="tns0:AccountType" type="string" nameSpace="http://www.example.org/AccountSchema">
                <parent Name="AccountDetailsType" nameSpace="http://www.example.org/AccountSchema"/>
              </parameters>
              <parameters Name="tns0:CountryName" type="string" nameSpace="http://www.example.org/AccountSchema">
                <parent Name="AccountDetailsType" nameSpace="http://www.example.org/AccountSchema"/>
              </parameters>
            </parameters>
          </Parameter>
        </informations>
      </Inputs>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="com.tibco.bwce.banq.account.service.db.GetCustomerDetails" Name="com.tibco.bwce.banq.account.service.db.GetCustomerDetails" ModelType="BW" moduleName="com.tibco.bwce.banq.account.service">
    <Operation Name="callProcess" serviceName="com.tibco.bwce.banq.account.service.db.GetCustomerDetails">
      <Inputs Id="com.tibco.bwce.banq.account.service_com.tibco.bwce.banq.account.service.db.GetCustomerDetails_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS">
        <informations Name="input" nameSpace="http://www.example.org/GetCustomerSchema">
          <nameSpaces prefix="tns" nameSapce="http://www.example.org/GetCustomerSchema"/>
          <nameSpaces prefix="tns0" nameSapce="http://www.example.org/AccountSchema"/>
          <Parameter Name="tns:CustomerName" type="string" nameSpace="http://www.example.org/GetCustomerSchema"/>
        </informations>
      </Inputs>
    </Operation>
  </ProcessNode>
</emulation:EmulationData>
