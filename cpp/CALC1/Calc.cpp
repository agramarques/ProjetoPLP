#include "Plot.h"
#include "Calc.h"

using namespace System;
using namespace System::Windows::Forms;

[STAThread]

void main(array<String^>^ args){
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false);
	CALC1::Calc form;
	Application::Run(%form);
}