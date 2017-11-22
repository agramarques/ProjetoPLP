#pragma once

namespace CALC1 {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	/// <summary>
	/// Summary for Plot
	/// </summary>
	public ref class Plot : public System::Windows::Forms::Form
	{
	public:
		Plot(void)
		{
			InitializeComponent();
			//
			//TODO: Add the constructor code here
			//
		}

	protected:
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		~Plot()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::DataVisualization::Charting::Chart^  chart1;
	protected:
	private: System::Windows::Forms::Label^  label7;
	private: System::Windows::Forms::Label^  label6;
	private: System::Windows::Forms::TextBox^  XfBox;
	private: System::Windows::Forms::TextBox^  XoBox;
	private: System::Windows::Forms::Button^  PlotB;
	private: System::Windows::Forms::Label^  label5;
	private: System::Windows::Forms::Label^  label4;
	private: System::Windows::Forms::Label^  label3;
	private: System::Windows::Forms::TextBox^  C;
	private: System::Windows::Forms::TextBox^  B;
	private: System::Windows::Forms::TextBox^  A;
	private: System::Windows::Forms::ComboBox^  functionList;

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			System::Windows::Forms::DataVisualization::Charting::ChartArea^  chartArea1 = (gcnew System::Windows::Forms::DataVisualization::Charting::ChartArea());
			System::Windows::Forms::DataVisualization::Charting::Legend^  legend1 = (gcnew System::Windows::Forms::DataVisualization::Charting::Legend());
			System::Windows::Forms::DataVisualization::Charting::Series^  series1 = (gcnew System::Windows::Forms::DataVisualization::Charting::Series());
			this->chart1 = (gcnew System::Windows::Forms::DataVisualization::Charting::Chart());
			this->label7 = (gcnew System::Windows::Forms::Label());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->XfBox = (gcnew System::Windows::Forms::TextBox());
			this->XoBox = (gcnew System::Windows::Forms::TextBox());
			this->PlotB = (gcnew System::Windows::Forms::Button());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->C = (gcnew System::Windows::Forms::TextBox());
			this->B = (gcnew System::Windows::Forms::TextBox());
			this->A = (gcnew System::Windows::Forms::TextBox());
			this->functionList = (gcnew System::Windows::Forms::ComboBox());
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->chart1))->BeginInit();
			this->SuspendLayout();
			// 
			// chart1
			// 
			chartArea1->Name = L"ChartArea1";
			this->chart1->ChartAreas->Add(chartArea1);
			legend1->Name = L"Legend1";
			this->chart1->Legends->Add(legend1);
			this->chart1->Location = System::Drawing::Point(202, 113);
			this->chart1->Name = L"chart1";
			series1->ChartArea = L"ChartArea1";
			series1->ChartType = System::Windows::Forms::DataVisualization::Charting::SeriesChartType::FastLine;
			series1->IsVisibleInLegend = false;
			series1->Legend = L"Legend1";
			series1->Name = L"Series1";
			this->chart1->Series->Add(series1);
			this->chart1->Size = System::Drawing::Size(300, 300);
			this->chart1->TabIndex = 62;
			this->chart1->Text = L"chart1";
			// 
			// label7
			// 
			this->label7->AutoSize = true;
			this->label7->Location = System::Drawing::Point(74, 250);
			this->label7->Name = L"label7";
			this->label7->Size = System::Drawing::Size(17, 13);
			this->label7->TabIndex = 61;
			this->label7->Text = L"Xf";
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Location = System::Drawing::Point(74, 224);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(20, 13);
			this->label6->TabIndex = 60;
			this->label6->Text = L"Xo";
			// 
			// XfBox
			// 
			this->XfBox->Location = System::Drawing::Point(115, 250);
			this->XfBox->Name = L"XfBox";
			this->XfBox->Size = System::Drawing::Size(37, 20);
			this->XfBox->TabIndex = 59;
			// 
			// XoBox
			// 
			this->XoBox->Location = System::Drawing::Point(115, 224);
			this->XoBox->Name = L"XoBox";
			this->XoBox->Size = System::Drawing::Size(37, 20);
			this->XoBox->TabIndex = 58;
			// 
			// PlotB
			// 
			this->PlotB->Location = System::Drawing::Point(77, 276);
			this->PlotB->Name = L"PlotB";
			this->PlotB->Size = System::Drawing::Size(75, 23);
			this->PlotB->TabIndex = 57;
			this->PlotB->Text = L"Plot";
			this->PlotB->UseVisualStyleBackColor = true;
			this->PlotB->Click += gcnew System::EventHandler(this, &Plot::PlotB_Click);
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Location = System::Drawing::Point(74, 197);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(14, 13);
			this->label5->TabIndex = 56;
			this->label5->Text = L"C";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Location = System::Drawing::Point(74, 171);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(14, 13);
			this->label4->TabIndex = 55;
			this->label4->Text = L"B";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Location = System::Drawing::Point(74, 143);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(14, 13);
			this->label3->TabIndex = 54;
			this->label3->Text = L"A";
			// 
			// C
			// 
			this->C->Location = System::Drawing::Point(115, 194);
			this->C->Name = L"C";
			this->C->Size = System::Drawing::Size(37, 20);
			this->C->TabIndex = 53;
			// 
			// B
			// 
			this->B->Location = System::Drawing::Point(115, 168);
			this->B->Name = L"B";
			this->B->Size = System::Drawing::Size(37, 20);
			this->B->TabIndex = 52;
			// 
			// A
			// 
			this->A->Location = System::Drawing::Point(115, 140);
			this->A->Name = L"A";
			this->A->Size = System::Drawing::Size(37, 20);
			this->A->TabIndex = 51;
			// 
			// functionList
			// 
			this->functionList->FormattingEnabled = true;
			this->functionList->Items->AddRange(gcnew cli::array< System::Object^  >(9) {
				L"y = A*x + B", L"y = A*x^2 + B*x + C", L"y = A*(e^(B*x) + C)",
					L"y = A*ln(B*x + C)", L"y = A/(x + B)", L"y = A*cos(B*x + C)", L"y = A*sin(B*x + C)", L"y = x^A", L"y = A^x"
			});
			this->functionList->Location = System::Drawing::Point(31, 113);
			this->functionList->Name = L"functionList";
			this->functionList->Size = System::Drawing::Size(121, 21);
			this->functionList->TabIndex = 50;
			// 
			// Plot
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(533, 527);
			this->Controls->Add(this->chart1);
			this->Controls->Add(this->label7);
			this->Controls->Add(this->label6);
			this->Controls->Add(this->XfBox);
			this->Controls->Add(this->XoBox);
			this->Controls->Add(this->PlotB);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->C);
			this->Controls->Add(this->B);
			this->Controls->Add(this->A);
			this->Controls->Add(this->functionList);
			this->Name = L"Plot";
			this->Text = L"Plot";
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->chart1))->EndInit();
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion
	private: System::Void PlotB_Click(System::Object^  sender, System::EventArgs^  e) {
				 double Xo, Xf;
				 try{
					 Xo = System::Convert::ToDouble(XoBox->Text);
					 Xf = System::Convert::ToDouble(XfBox->Text);
				 }
				 catch (Exception ^e){
					 Xo = -5;
					 Xf = 5;
				 }

				 double x;
				 double a, b, c;
				 chart1->Series[0]->Points->Clear();
				 switch (functionList->SelectedIndex)
				 {
				 case 0:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a*x + b);
					 }
					 break;
				 case 1:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
						 c = System::Convert::ToDouble(C->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 1;
						 c = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a*Math::Pow(x, 2) + b*x + c);
					 }
					 break;
				 case 2:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
						 c = System::Convert::ToDouble(C->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 1;
						 c = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a*Math::Exp(b*x + c));
					 }
					 break;
				 case 3:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
						 c = System::Convert::ToDouble(C->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 1;
						 c = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a*Math::Log(b*x + c));
					 }
					 break;
				 case 4:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a /(x + b));
					 }
					 break;
				 case 5:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
						 c = System::Convert::ToDouble(C->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 1;
						 c = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a*Math::Cos(b*x + c));
					 }
					 break;
				 case 6:
					 try{
						 a = System::Convert::ToDouble(A->Text);
						 b = System::Convert::ToDouble(B->Text);
						 c = System::Convert::ToDouble(C->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
						 b = 1;
						 c = 0;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, a*Math::Sin(b*x + c));
					 }
					 break;
				 case 7:
					 try{
						 a = System::Convert::ToDouble(A->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, Math::Pow(x, a));
					 }
					 break;
				 case 8:
					 try{
						 a = System::Convert::ToDouble(A->Text);
					 }
					 catch (Exception ^e){
						 a = 1;
					 }
					 for (x = Xo; x <= Xf; x += 0.1){
						 chart1->Series[0]->Points->AddXY(x, Math::Pow(a, x));
					 }
					 break;
				 default:
					 break;
				 }

	}
};
}
