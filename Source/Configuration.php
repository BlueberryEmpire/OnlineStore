<?php

class Configuration
{
	public function __construct()
	{
		$this->appDirectory = "BlueberryEmpire.com/Store/OnlineStore/Source";
		$this->databaseServerName = "localhost";
		$this->databaseUsername = "web";
		$this->databasePassword = "[redacted]";
		$this->databaseName = "Store";
		$this->emailAddressHelp = "help@blueberryempire.com";
		$this->emailAddressNotify = "notify@blueberryempire.com";
		$this->emailEnabled = false;
		$this->errorReportingEnabled = false;
		$this->paymentClientConfig = "{ \"type\": \"Square\", \"accessToken\": \"[redacted]\", \"applicationID\": \"[redacted]\", \"locationID\": \"[redacted]\"}";
		$this->siteTitle = "Blueberry Empire Store";

		$this->applyToEnvironment();
	}

	public function applyToEnvironment()
	{
		$errorReportingEnabled = $this->errorReportingEnabled;
		error_reporting($errorReportingEnabled ? 1 : 0);

		if ($errorReportingEnabled)
		{
			mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
		}

		$documentRoot = $_SERVER["DOCUMENT_ROOT"] . "/";
		$appDirectory = $this->appDirectory;
		$appRoot = $documentRoot . $appDirectory . "/";
		$classRoot = $appRoot . "Classes/";
		$includePaths = $appRoot . ":" . $classRoot;
		set_include_path($includePaths);
	}
}

return new Configuration();

?>
