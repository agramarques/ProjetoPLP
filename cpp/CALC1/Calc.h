#pragma once
#include "Plot.h"

namespace CALC1 {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	/// <summary>
	/// Summary for Calc
	/// </summary>
	public ref class Calc : public System::Windows::Forms::Form
	{
	public:
		Calc(void)
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
		~Calc()
		{
			if (components)
			{
				delete components;
			}
		}

	private: System::Windows::Forms::Label^  label1;
	private: System::Windows::Forms::TextBox^  stackBox;

	private: System::Windows::Forms::Button^  num1;
	private: System::Windows::Forms::Button^  num2;
	private: System::Windows::Forms::Button^  num3;
	private: System::Windows::Forms::Button^  num0;
	private: System::Windows::Forms::Button^  num5;
	private: System::Windows::Forms::Button^  num6;
	private: System::Windows::Forms::Button^  num7;
	private: System::Windows::Forms::Button^  num9;
	private: System::Windows::Forms::Button^  num8;
	private: System::Windows::Forms::Button^  num4;
	private: System::Windows::Forms::Button^  dot;
	private: System::Windows::Forms::Button^  div;
	private: System::Windows::Forms::Button^  mult;
	private: System::Windows::Forms::Button^  diff;
	private: System::Windows::Forms::Button^  sum;
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Button^  sin;
	private: System::Windows::Forms::Button^  cos;
	private: System::Windows::Forms::Button^  tan;
	private: System::Windows::Forms::Button^  sqrt;
	private: System::Windows::Forms::Button^  pow;
	private: System::Windows::Forms::Button^  inv;
	private: System::Windows::Forms::Button^  log;
	private: System::Windows::Forms::Button^  ln;

	private: System::Windows::Forms::Button^  button2;
	private: System::Windows::Forms::Button^  hipotenusa;
	private: System::Windows::Forms::Button^  fat;
	private: System::Windows::Forms::Button^  comb;
	private: System::Windows::Forms::Button^  polares;
	private: System::Windows::Forms::Button^  cart;
	private: System::Windows::Forms::Button^  raizes;
	private: System::Windows::Forms::Button^  pow10;
	private: System::Windows::Forms::Button^  pow2;
	private: System::Windows::Forms::Button^  pi;
















	private: System::Windows::Forms::Button^  addAll;
	private: System::Windows::Forms::TextBox^  statOutput;
	private: System::Windows::Forms::Button^  avg;
	private: System::Windows::Forms::Button^  prod;
	private: System::Windows::Forms::Button^  dev;
	private: System::Windows::Forms::Button^  var;
	private: System::Windows::Forms::Button^  clr;
	private: System::Windows::Forms::Button^  asin;
	private: System::Windows::Forms::Button^  acos;
	private: System::Windows::Forms::Button^  atg;
	private: System::Windows::Forms::Button^  square;
	private: System::Windows::Forms::Button^  powerRoot;
	private: System::Windows::Forms::Label^  label8;
	private: System::Windows::Forms::Button^  send;
	private: System::Windows::Forms::Button^  plotForm;
	private: System::Windows::Forms::Button^  swap;
	private: System::Windows::Forms::Button^  areaT;
	private: System::Windows::Forms::Button^  areaC;
	private: System::Windows::Forms::Button^  arranjo;
	private: System::Windows::Forms::GroupBox^  groupBox1;

	private: System::Windows::Forms::ToolTip^  toolTip1;
	private: System::Windows::Forms::Button^  harm;


	private: System::Windows::Forms::GroupBox^  groupBox2;



private: System::Windows::Forms::Button^  button1;
private: System::Windows::Forms::Button^  button3;
private: System::Windows::Forms::Button^  button4;
private: System::Windows::Forms::Button^  geom;
private: System::Windows::Forms::Button^  medi;
private: System::Windows::Forms::Button^  modaCall;

	private: System::ComponentModel::IContainer^  components;













	protected:

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>


#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->components = (gcnew System::ComponentModel::Container());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->stackBox = (gcnew System::Windows::Forms::TextBox());
			this->num1 = (gcnew System::Windows::Forms::Button());
			this->num2 = (gcnew System::Windows::Forms::Button());
			this->num3 = (gcnew System::Windows::Forms::Button());
			this->num0 = (gcnew System::Windows::Forms::Button());
			this->num5 = (gcnew System::Windows::Forms::Button());
			this->num6 = (gcnew System::Windows::Forms::Button());
			this->num7 = (gcnew System::Windows::Forms::Button());
			this->num9 = (gcnew System::Windows::Forms::Button());
			this->num8 = (gcnew System::Windows::Forms::Button());
			this->num4 = (gcnew System::Windows::Forms::Button());
			this->dot = (gcnew System::Windows::Forms::Button());
			this->div = (gcnew System::Windows::Forms::Button());
			this->mult = (gcnew System::Windows::Forms::Button());
			this->diff = (gcnew System::Windows::Forms::Button());
			this->sum = (gcnew System::Windows::Forms::Button());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->sin = (gcnew System::Windows::Forms::Button());
			this->cos = (gcnew System::Windows::Forms::Button());
			this->tan = (gcnew System::Windows::Forms::Button());
			this->sqrt = (gcnew System::Windows::Forms::Button());
			this->pow = (gcnew System::Windows::Forms::Button());
			this->inv = (gcnew System::Windows::Forms::Button());
			this->log = (gcnew System::Windows::Forms::Button());
			this->ln = (gcnew System::Windows::Forms::Button());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->hipotenusa = (gcnew System::Windows::Forms::Button());
			this->fat = (gcnew System::Windows::Forms::Button());
			this->comb = (gcnew System::Windows::Forms::Button());
			this->polares = (gcnew System::Windows::Forms::Button());
			this->cart = (gcnew System::Windows::Forms::Button());
			this->raizes = (gcnew System::Windows::Forms::Button());
			this->pow10 = (gcnew System::Windows::Forms::Button());
			this->pow2 = (gcnew System::Windows::Forms::Button());
			this->pi = (gcnew System::Windows::Forms::Button());
			this->addAll = (gcnew System::Windows::Forms::Button());
			this->statOutput = (gcnew System::Windows::Forms::TextBox());
			this->avg = (gcnew System::Windows::Forms::Button());
			this->prod = (gcnew System::Windows::Forms::Button());
			this->dev = (gcnew System::Windows::Forms::Button());
			this->var = (gcnew System::Windows::Forms::Button());
			this->clr = (gcnew System::Windows::Forms::Button());
			this->asin = (gcnew System::Windows::Forms::Button());
			this->acos = (gcnew System::Windows::Forms::Button());
			this->atg = (gcnew System::Windows::Forms::Button());
			this->square = (gcnew System::Windows::Forms::Button());
			this->powerRoot = (gcnew System::Windows::Forms::Button());
			this->label8 = (gcnew System::Windows::Forms::Label());
			this->send = (gcnew System::Windows::Forms::Button());
			this->plotForm = (gcnew System::Windows::Forms::Button());
			this->swap = (gcnew System::Windows::Forms::Button());
			this->areaT = (gcnew System::Windows::Forms::Button());
			this->areaC = (gcnew System::Windows::Forms::Button());
			this->arranjo = (gcnew System::Windows::Forms::Button());
			this->groupBox1 = (gcnew System::Windows::Forms::GroupBox());
			this->medi = (gcnew System::Windows::Forms::Button());
			this->geom = (gcnew System::Windows::Forms::Button());
			this->harm = (gcnew System::Windows::Forms::Button());
			this->toolTip1 = (gcnew System::Windows::Forms::ToolTip(this->components));
			this->button4 = (gcnew System::Windows::Forms::Button());
			this->button3 = (gcnew System::Windows::Forms::Button());
			this->groupBox2 = (gcnew System::Windows::Forms::GroupBox());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->modaCall = (gcnew System::Windows::Forms::Button());
			this->groupBox1->SuspendLayout();
			this->groupBox2->SuspendLayout();
			this->SuspendLayout();
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Location = System::Drawing::Point(36, 157);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(0, 13);
			this->label1->TabIndex = 1;
			// 
			// stackBox
			// 
			this->stackBox->Location = System::Drawing::Point(39, 28);
			this->stackBox->Multiline = true;
			this->stackBox->Name = L"stackBox";
			this->stackBox->RightToLeft = System::Windows::Forms::RightToLeft::No;
			this->stackBox->Size = System::Drawing::Size(134, 98);
			this->stackBox->TabIndex = 2;
			this->stackBox->TextAlign = System::Windows::Forms::HorizontalAlignment::Right;
			this->stackBox->KeyPress += gcnew System::Windows::Forms::KeyPressEventHandler(this, &Calc::stackBox_KeyPress);
			// 
			// num1
			// 
			this->num1->Location = System::Drawing::Point(265, 199);
			this->num1->Name = L"num1";
			this->num1->Size = System::Drawing::Size(24, 23);
			this->num1->TabIndex = 3;
			this->num1->Text = L"1";
			this->num1->UseVisualStyleBackColor = true;
			this->num1->Click += gcnew System::EventHandler(this, &Calc::num1_Click);
			// 
			// num2
			// 
			this->num2->Location = System::Drawing::Point(295, 199);
			this->num2->Name = L"num2";
			this->num2->Size = System::Drawing::Size(24, 23);
			this->num2->TabIndex = 4;
			this->num2->Text = L"2";
			this->num2->UseVisualStyleBackColor = true;
			this->num2->Click += gcnew System::EventHandler(this, &Calc::num2_Click);
			// 
			// num3
			// 
			this->num3->Location = System::Drawing::Point(325, 199);
			this->num3->Name = L"num3";
			this->num3->Size = System::Drawing::Size(24, 23);
			this->num3->TabIndex = 5;
			this->num3->Text = L"3";
			this->num3->UseVisualStyleBackColor = true;
			this->num3->Click += gcnew System::EventHandler(this, &Calc::num3_Click);
			// 
			// num0
			// 
			this->num0->Location = System::Drawing::Point(295, 283);
			this->num0->Name = L"num0";
			this->num0->Size = System::Drawing::Size(24, 23);
			this->num0->TabIndex = 6;
			this->num0->Text = L"0";
			this->num0->UseVisualStyleBackColor = true;
			this->num0->Click += gcnew System::EventHandler(this, &Calc::num0_Click);
			// 
			// num5
			// 
			this->num5->Location = System::Drawing::Point(295, 227);
			this->num5->Name = L"num5";
			this->num5->Size = System::Drawing::Size(24, 23);
			this->num5->TabIndex = 7;
			this->num5->Text = L"5";
			this->num5->UseVisualStyleBackColor = true;
			this->num5->Click += gcnew System::EventHandler(this, &Calc::num5_Click);
			// 
			// num6
			// 
			this->num6->Location = System::Drawing::Point(325, 227);
			this->num6->Name = L"num6";
			this->num6->Size = System::Drawing::Size(24, 23);
			this->num6->TabIndex = 8;
			this->num6->Text = L"6";
			this->num6->UseVisualStyleBackColor = true;
			this->num6->Click += gcnew System::EventHandler(this, &Calc::num6_Click);
			// 
			// num7
			// 
			this->num7->Location = System::Drawing::Point(265, 255);
			this->num7->Name = L"num7";
			this->num7->Size = System::Drawing::Size(24, 23);
			this->num7->TabIndex = 9;
			this->num7->Text = L"7";
			this->num7->UseVisualStyleBackColor = true;
			this->num7->Click += gcnew System::EventHandler(this, &Calc::num7_Click);
			// 
			// num9
			// 
			this->num9->Location = System::Drawing::Point(325, 255);
			this->num9->Name = L"num9";
			this->num9->Size = System::Drawing::Size(24, 23);
			this->num9->TabIndex = 10;
			this->num9->Text = L"9";
			this->num9->UseVisualStyleBackColor = true;
			this->num9->Click += gcnew System::EventHandler(this, &Calc::num9_Click);
			// 
			// num8
			// 
			this->num8->Location = System::Drawing::Point(295, 255);
			this->num8->Name = L"num8";
			this->num8->Size = System::Drawing::Size(24, 23);
			this->num8->TabIndex = 11;
			this->num8->Text = L"8";
			this->num8->UseVisualStyleBackColor = true;
			this->num8->Click += gcnew System::EventHandler(this, &Calc::num8_Click);
			// 
			// num4
			// 
			this->num4->Location = System::Drawing::Point(265, 227);
			this->num4->Name = L"num4";
			this->num4->Size = System::Drawing::Size(24, 23);
			this->num4->TabIndex = 12;
			this->num4->Text = L"4";
			this->num4->UseVisualStyleBackColor = true;
			this->num4->Click += gcnew System::EventHandler(this, &Calc::num4_Click);
			// 
			// dot
			// 
			this->dot->Location = System::Drawing::Point(325, 283);
			this->dot->Name = L"dot";
			this->dot->Size = System::Drawing::Size(24, 23);
			this->dot->TabIndex = 13;
			this->dot->Text = L",";
			this->dot->UseVisualStyleBackColor = true;
			this->dot->Click += gcnew System::EventHandler(this, &Calc::dot_Click);
			// 
			// div
			// 
			this->div->Location = System::Drawing::Point(355, 283);
			this->div->Name = L"div";
			this->div->Size = System::Drawing::Size(24, 23);
			this->div->TabIndex = 14;
			this->div->Text = L"/";
			this->div->UseVisualStyleBackColor = true;
			this->div->Click += gcnew System::EventHandler(this, &Calc::div_Click);
			// 
			// mult
			// 
			this->mult->Location = System::Drawing::Point(355, 255);
			this->mult->Name = L"mult";
			this->mult->Size = System::Drawing::Size(24, 23);
			this->mult->TabIndex = 15;
			this->mult->Text = L"*";
			this->mult->UseVisualStyleBackColor = true;
			this->mult->Click += gcnew System::EventHandler(this, &Calc::mult_Click);
			// 
			// diff
			// 
			this->diff->Location = System::Drawing::Point(355, 227);
			this->diff->Name = L"diff";
			this->diff->Size = System::Drawing::Size(24, 23);
			this->diff->TabIndex = 16;
			this->diff->Text = L"-";
			this->diff->UseVisualStyleBackColor = true;
			this->diff->Click += gcnew System::EventHandler(this, &Calc::diff_Click);
			// 
			// sum
			// 
			this->sum->Location = System::Drawing::Point(355, 199);
			this->sum->Name = L"sum";
			this->sum->Size = System::Drawing::Size(24, 23);
			this->sum->TabIndex = 17;
			this->sum->Text = L"+";
			this->sum->UseVisualStyleBackColor = true;
			this->sum->Click += gcnew System::EventHandler(this, &Calc::sum_Click);
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Location = System::Drawing::Point(36, 9);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(57, 13);
			this->label2->TabIndex = 18;
			this->label2->Text = L"Pilha Atual";
			// 
			// sin
			// 
			this->sin->Location = System::Drawing::Point(26, 219);
			this->sin->Name = L"sin";
			this->sin->Size = System::Drawing::Size(52, 22);
			this->sin->TabIndex = 19;
			this->sin->Text = L"&sin(x)";
			this->sin->UseVisualStyleBackColor = true;
			this->sin->Click += gcnew System::EventHandler(this, &Calc::sin_Click);
			// 
			// cos
			// 
			this->cos->Location = System::Drawing::Point(83, 220);
			this->cos->Name = L"cos";
			this->cos->Size = System::Drawing::Size(52, 22);
			this->cos->TabIndex = 20;
			this->cos->Text = L"&cos(x)";
			this->cos->UseVisualStyleBackColor = true;
			this->cos->Click += gcnew System::EventHandler(this, &Calc::cos_Click);
			// 
			// tan
			// 
			this->tan->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->tan->Location = System::Drawing::Point(145, 219);
			this->tan->Name = L"tan";
			this->tan->Size = System::Drawing::Size(52, 22);
			this->tan->TabIndex = 21;
			this->tan->Text = L"&tg(x)";
			this->tan->UseVisualStyleBackColor = true;
			this->tan->Click += gcnew System::EventHandler(this, &Calc::tan_Click);
			// 
			// sqrt
			// 
			this->sqrt->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->sqrt->Location = System::Drawing::Point(26, 278);
			this->sqrt->Name = L"sqrt";
			this->sqrt->Size = System::Drawing::Size(52, 22);
			this->sqrt->TabIndex = 22;
			this->sqrt->Text = L"sq&rt(x)";
			this->sqrt->UseVisualStyleBackColor = true;
			this->sqrt->Click += gcnew System::EventHandler(this, &Calc::sqrt_Click);
			// 
			// pow
			// 
			this->pow->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->pow->Location = System::Drawing::Point(26, 308);
			this->pow->Name = L"pow";
			this->pow->Size = System::Drawing::Size(52, 22);
			this->pow->TabIndex = 23;
			this->pow->Text = L"y^x";
			this->pow->UseVisualStyleBackColor = true;
			this->pow->Click += gcnew System::EventHandler(this, &Calc::pow_Click);
			// 
			// inv
			// 
			this->inv->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->inv->Location = System::Drawing::Point(145, 311);
			this->inv->Name = L"inv";
			this->inv->Size = System::Drawing::Size(52, 22);
			this->inv->TabIndex = 24;
			this->inv->Text = L"1/x";
			this->inv->UseVisualStyleBackColor = true;
			this->inv->Click += gcnew System::EventHandler(this, &Calc::inv_Click);
			// 
			// log
			// 
			this->log->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->log->Location = System::Drawing::Point(26, 338);
			this->log->Name = L"log";
			this->log->Size = System::Drawing::Size(52, 22);
			this->log->TabIndex = 25;
			this->log->Text = L"&log(x)";
			this->log->UseVisualStyleBackColor = true;
			this->log->Click += gcnew System::EventHandler(this, &Calc::log_Click);
			// 
			// ln
			// 
			this->ln->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->ln->Location = System::Drawing::Point(84, 339);
			this->ln->Name = L"ln";
			this->ln->Size = System::Drawing::Size(52, 22);
			this->ln->TabIndex = 26;
			this->ln->Text = L"l&n(x)";
			this->ln->UseVisualStyleBackColor = true;
			this->ln->Click += gcnew System::EventHandler(this, &Calc::ln_Click);
			// 
			// button2
			// 
			this->button2->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->button2->Location = System::Drawing::Point(145, 339);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(52, 22);
			this->button2->TabIndex = 27;
			this->button2->Text = L"&e^x";
			this->button2->UseVisualStyleBackColor = true;
			this->button2->Click += gcnew System::EventHandler(this, &Calc::button2_Click);
			// 
			// hipotenusa
			// 
			this->hipotenusa->Location = System::Drawing::Point(9, 19);
			this->hipotenusa->Name = L"hipotenusa";
			this->hipotenusa->Size = System::Drawing::Size(84, 23);
			this->hipotenusa->TabIndex = 28;
			this->hipotenusa->Text = L"Hipotenusa";
			this->toolTip1->SetToolTip(this->hipotenusa, L"Informe os catetos");
			this->hipotenusa->UseVisualStyleBackColor = true;
			// 
			// fat
			// 
			this->fat->Location = System::Drawing::Point(145, 278);
			this->fat->Name = L"fat";
			this->fat->Size = System::Drawing::Size(52, 22);
			this->fat->TabIndex = 29;
			this->fat->Text = L"x!";
			this->fat->UseVisualStyleBackColor = true;
			this->fat->Click += gcnew System::EventHandler(this, &Calc::fat_Click);
			// 
			// comb
			// 
			this->comb->Location = System::Drawing::Point(26, 396);
			this->comb->Name = L"comb";
			this->comb->Size = System::Drawing::Size(55, 22);
			this->comb->TabIndex = 30;
			this->comb->Text = L"yCx";
			this->toolTip1->SetToolTip(this->comb, L"Combinação Simples de y x a x\r\nInforme y e x nessa ordem\r\n");
			this->comb->UseVisualStyleBackColor = true;
			this->comb->Click += gcnew System::EventHandler(this, &Calc::comb_Click);
			// 
			// polares
			// 
			this->polares->Location = System::Drawing::Point(9, 49);
			this->polares->Name = L"polares";
			this->polares->Size = System::Drawing::Size(84, 23);
			this->polares->TabIndex = 31;
			this->polares->Text = L"Coord. Polares";
			this->toolTip1->SetToolTip(this->polares, L"Converte coordenadas Cartesianas para polares\r\nInforme x e y");
			this->polares->UseVisualStyleBackColor = true;
			this->polares->Click += gcnew System::EventHandler(this, &Calc::polares_Click);
			// 
			// cart
			// 
			this->cart->Location = System::Drawing::Point(9, 76);
			this->cart->Name = L"cart";
			this->cart->Size = System::Drawing::Size(84, 23);
			this->cart->TabIndex = 32;
			this->cart->Text = L"Cartesianas";
			this->toolTip1->SetToolTip(this->cart, L"Converte coordenadas polares para cartesianas\r\nInforme o raio e o ângulo");
			this->cart->UseVisualStyleBackColor = true;
			this->cart->Click += gcnew System::EventHandler(this, &Calc::cart_Click);
			// 
			// raizes
			// 
			this->raizes->Location = System::Drawing::Point(125, 78);
			this->raizes->Name = L"raizes";
			this->raizes->Size = System::Drawing::Size(88, 23);
			this->raizes->TabIndex = 33;
			this->raizes->Text = L"Raizes 2grau";
			this->toolTip1->SetToolTip(this->raizes, L"Determina as raízes reais (quando existirem)\r\nInforme A, B e C");
			this->raizes->UseVisualStyleBackColor = true;
			this->raizes->Click += gcnew System::EventHandler(this, &Calc::raizes_Click);
			// 
			// pow10
			// 
			this->pow10->Location = System::Drawing::Point(26, 368);
			this->pow10->Name = L"pow10";
			this->pow10->Size = System::Drawing::Size(52, 22);
			this->pow10->TabIndex = 34;
			this->pow10->Text = L"10^x";
			this->pow10->UseVisualStyleBackColor = true;
			this->pow10->Click += gcnew System::EventHandler(this, &Calc::pow10_Click);
			// 
			// pow2
			// 
			this->pow2->Location = System::Drawing::Point(84, 368);
			this->pow2->Name = L"pow2";
			this->pow2->Size = System::Drawing::Size(52, 22);
			this->pow2->TabIndex = 35;
			this->pow2->Text = L"2^x";
			this->pow2->UseVisualStyleBackColor = true;
			this->pow2->Click += gcnew System::EventHandler(this, &Calc::pow2_Click);
			// 
			// pi
			// 
			this->pi->Location = System::Drawing::Point(265, 282);
			this->pi->Name = L"pi";
			this->pi->Size = System::Drawing::Size(24, 23);
			this->pi->TabIndex = 36;
			this->pi->Text = L"pi";
			this->pi->UseVisualStyleBackColor = true;
			this->pi->Click += gcnew System::EventHandler(this, &Calc::pi_Click);
			// 
			// addAll
			// 
			this->addAll->Location = System::Drawing::Point(14, 27);
			this->addAll->Name = L"addAll";
			this->addAll->Size = System::Drawing::Size(84, 23);
			this->addAll->TabIndex = 50;
			this->addAll->Text = L"Somatório";
			this->addAll->UseVisualStyleBackColor = true;
			this->addAll->Click += gcnew System::EventHandler(this, &Calc::addAll_Click);
			// 
			// statOutput
			// 
			this->statOutput->Location = System::Drawing::Point(115, 56);
			this->statOutput->Name = L"statOutput";
			this->statOutput->Size = System::Drawing::Size(100, 20);
			this->statOutput->TabIndex = 51;
			// 
			// avg
			// 
			this->avg->Location = System::Drawing::Point(14, 83);
			this->avg->Name = L"avg";
			this->avg->Size = System::Drawing::Size(85, 23);
			this->avg->TabIndex = 52;
			this->avg->Text = L"Média";
			this->avg->UseVisualStyleBackColor = true;
			this->avg->Click += gcnew System::EventHandler(this, &Calc::avg_Click);
			// 
			// prod
			// 
			this->prod->Location = System::Drawing::Point(14, 55);
			this->prod->Name = L"prod";
			this->prod->Size = System::Drawing::Size(85, 23);
			this->prod->TabIndex = 53;
			this->prod->Text = L"Produtório";
			this->prod->UseVisualStyleBackColor = true;
			this->prod->Click += gcnew System::EventHandler(this, &Calc::prod_Click);
			// 
			// dev
			// 
			this->dev->Location = System::Drawing::Point(115, 115);
			this->dev->Name = L"dev";
			this->dev->Size = System::Drawing::Size(85, 23);
			this->dev->TabIndex = 54;
			this->dev->Text = L"Desvio Padrão";
			this->dev->UseVisualStyleBackColor = true;
			this->dev->Click += gcnew System::EventHandler(this, &Calc::dev_Click);
			// 
			// var
			// 
			this->var->Location = System::Drawing::Point(115, 142);
			this->var->Name = L"var";
			this->var->Size = System::Drawing::Size(85, 23);
			this->var->TabIndex = 55;
			this->var->Text = L"Variância";
			this->var->UseVisualStyleBackColor = true;
			this->var->Click += gcnew System::EventHandler(this, &Calc::var_Click);
			// 
			// clr
			// 
			this->clr->Location = System::Drawing::Point(125, 133);
			this->clr->Name = L"clr";
			this->clr->Size = System::Drawing::Size(48, 23);
			this->clr->TabIndex = 56;
			this->clr->Text = L"Clear";
			this->clr->UseVisualStyleBackColor = true;
			this->clr->Click += gcnew System::EventHandler(this, &Calc::clr_Click);
			// 
			// asin
			// 
			this->asin->Location = System::Drawing::Point(26, 248);
			this->asin->Name = L"asin";
			this->asin->Size = System::Drawing::Size(52, 22);
			this->asin->TabIndex = 57;
			this->asin->Text = L"asin(x)";
			this->asin->UseVisualStyleBackColor = true;
			this->asin->Click += gcnew System::EventHandler(this, &Calc::asin_Click);
			// 
			// acos
			// 
			this->acos->Location = System::Drawing::Point(84, 247);
			this->acos->Name = L"acos";
			this->acos->Size = System::Drawing::Size(52, 22);
			this->acos->TabIndex = 58;
			this->acos->Text = L"acos(x)";
			this->acos->UseVisualStyleBackColor = true;
			this->acos->Click += gcnew System::EventHandler(this, &Calc::acos_Click);
			// 
			// atg
			// 
			this->atg->Location = System::Drawing::Point(145, 247);
			this->atg->Name = L"atg";
			this->atg->Size = System::Drawing::Size(52, 22);
			this->atg->TabIndex = 59;
			this->atg->Text = L"atg(x)";
			this->atg->UseVisualStyleBackColor = true;
			this->atg->Click += gcnew System::EventHandler(this, &Calc::atg_Click);
			// 
			// square
			// 
			this->square->Location = System::Drawing::Point(84, 278);
			this->square->Name = L"square";
			this->square->Size = System::Drawing::Size(52, 22);
			this->square->TabIndex = 60;
			this->square->Text = L"x^2";
			this->square->UseVisualStyleBackColor = true;
			this->square->Click += gcnew System::EventHandler(this, &Calc::square_Click);
			// 
			// powerRoot
			// 
			this->powerRoot->Font = (gcnew System::Drawing::Font(L"Microsoft Sans Serif", 8.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(0)));
			this->powerRoot->Location = System::Drawing::Point(83, 308);
			this->powerRoot->Name = L"powerRoot";
			this->powerRoot->Size = System::Drawing::Size(52, 22);
			this->powerRoot->TabIndex = 61;
			this->powerRoot->Text = L"y^(1/x)";
			this->powerRoot->UseVisualStyleBackColor = true;
			this->powerRoot->Click += gcnew System::EventHandler(this, &Calc::powerRoot_Click);
			// 
			// label8
			// 
			this->label8->AutoSize = true;
			this->label8->Location = System::Drawing::Point(112, 33);
			this->label8->Name = L"label8";
			this->label8->Size = System::Drawing::Size(56, 13);
			this->label8->TabIndex = 62;
			this->label8->Text = L"Saída stat";
			// 
			// send
			// 
			this->send->Location = System::Drawing::Point(115, 86);
			this->send->Name = L"send";
			this->send->Size = System::Drawing::Size(100, 23);
			this->send->TabIndex = 63;
			this->send->Text = L"Enviar p/ pilha";
			this->send->UseVisualStyleBackColor = true;
			this->send->Click += gcnew System::EventHandler(this, &Calc::send_Click);
			// 
			// plotForm
			// 
			this->plotForm->Location = System::Drawing::Point(67, 438);
			this->plotForm->Name = L"plotForm";
			this->plotForm->Size = System::Drawing::Size(75, 23);
			this->plotForm->TabIndex = 64;
			this->plotForm->Text = L"Gráficos";
			this->plotForm->UseVisualStyleBackColor = true;
			this->plotForm->Click += gcnew System::EventHandler(this, &Calc::plotForm_Click);
			// 
			// swap
			// 
			this->swap->Location = System::Drawing::Point(67, 133);
			this->swap->Name = L"swap";
			this->swap->Size = System::Drawing::Size(50, 23);
			this->swap->TabIndex = 65;
			this->swap->Text = L"Swap";
			this->swap->UseVisualStyleBackColor = true;
			this->swap->Click += gcnew System::EventHandler(this, &Calc::swap_Click);
			// 
			// areaT
			// 
			this->areaT->Location = System::Drawing::Point(125, 19);
			this->areaT->Name = L"areaT";
			this->areaT->Size = System::Drawing::Size(88, 23);
			this->areaT->TabIndex = 66;
			this->areaT->Text = L"Área do triang.";
			this->toolTip1->SetToolTip(this->areaT, L"Informe os lados do triângulo.\r\nObs.: o triângulo será validado antes");
			this->areaT->UseVisualStyleBackColor = true;
			this->areaT->Click += gcnew System::EventHandler(this, &Calc::areaT_Click);
			// 
			// areaC
			// 
			this->areaC->Location = System::Drawing::Point(125, 49);
			this->areaC->Name = L"areaC";
			this->areaC->Size = System::Drawing::Size(88, 23);
			this->areaC->TabIndex = 67;
			this->areaC->Text = L"Área do círculo";
			this->toolTip1->SetToolTip(this->areaC, L"Informe o raio");
			this->areaC->UseVisualStyleBackColor = true;
			this->areaC->Click += gcnew System::EventHandler(this, &Calc::areaC_Click);
			// 
			// arranjo
			// 
			this->arranjo->Location = System::Drawing::Point(84, 396);
			this->arranjo->Name = L"arranjo";
			this->arranjo->Size = System::Drawing::Size(55, 22);
			this->arranjo->TabIndex = 68;
			this->arranjo->Text = L"yAx";
			this->toolTip1->SetToolTip(this->arranjo, L"Arranjo Simples de y x a x\r\nInforme y e x nessa ordem");
			this->arranjo->UseVisualStyleBackColor = true;
			this->arranjo->Click += gcnew System::EventHandler(this, &Calc::arranjo_Click);
			// 
			// groupBox1
			// 
			this->groupBox1->Controls->Add(this->modaCall);
			this->groupBox1->Controls->Add(this->medi);
			this->groupBox1->Controls->Add(this->geom);
			this->groupBox1->Controls->Add(this->harm);
			this->groupBox1->Controls->Add(this->send);
			this->groupBox1->Controls->Add(this->label8);
			this->groupBox1->Controls->Add(this->var);
			this->groupBox1->Controls->Add(this->dev);
			this->groupBox1->Controls->Add(this->prod);
			this->groupBox1->Controls->Add(this->avg);
			this->groupBox1->Controls->Add(this->statOutput);
			this->groupBox1->Controls->Add(this->addAll);
			this->groupBox1->Location = System::Drawing::Point(257, 327);
			this->groupBox1->Name = L"groupBox1";
			this->groupBox1->Size = System::Drawing::Size(233, 215);
			this->groupBox1->TabIndex = 69;
			this->groupBox1->TabStop = false;
			this->groupBox1->Text = L"Estatísticas";
			// 
			// medi
			// 
			this->medi->Location = System::Drawing::Point(14, 169);
			this->medi->Name = L"medi";
			this->medi->Size = System::Drawing::Size(84, 24);
			this->medi->TabIndex = 66;
			this->medi->Text = L"Mediana";
			this->medi->UseVisualStyleBackColor = true;
			this->medi->Click += gcnew System::EventHandler(this, &Calc::medi_Click);
			// 
			// geom
			// 
			this->geom->Location = System::Drawing::Point(14, 140);
			this->geom->Name = L"geom";
			this->geom->Size = System::Drawing::Size(85, 23);
			this->geom->TabIndex = 65;
			this->geom->Text = L"M. Geométrica";
			this->geom->UseVisualStyleBackColor = true;
			this->geom->Click += gcnew System::EventHandler(this, &Calc::geom_Click);
			// 
			// harm
			// 
			this->harm->Location = System::Drawing::Point(14, 111);
			this->harm->Name = L"harm";
			this->harm->Size = System::Drawing::Size(85, 23);
			this->harm->TabIndex = 64;
			this->harm->Text = L"M. Harmônica";
			this->harm->UseVisualStyleBackColor = true;
			this->harm->Click += gcnew System::EventHandler(this, &Calc::harm_Click);
			// 
			// button4
			// 
			this->button4->Location = System::Drawing::Point(125, 105);
			this->button4->Name = L"button4";
			this->button4->Size = System::Drawing::Size(88, 23);
			this->button4->TabIndex = 74;
			this->button4->Text = L"Vol. Cilindro";
			this->toolTip1->SetToolTip(this->button4, L"Calcula o volume do cilindro dado o raio e altura");
			this->button4->UseVisualStyleBackColor = true;
			this->button4->Click += gcnew System::EventHandler(this, &Calc::button4_Click);
			// 
			// button3
			// 
			this->button3->Location = System::Drawing::Point(9, 107);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(84, 23);
			this->button3->TabIndex = 73;
			this->button3->Text = L"Vol. Esfera";
			this->toolTip1->SetToolTip(this->button3, L"Calcula o volume da esfera dado o raio");
			this->button3->UseVisualStyleBackColor = true;
			this->button3->Click += gcnew System::EventHandler(this, &Calc::button3_Click);
			// 
			// groupBox2
			// 
			this->groupBox2->Controls->Add(this->button4);
			this->groupBox2->Controls->Add(this->button3);
			this->groupBox2->Controls->Add(this->hipotenusa);
			this->groupBox2->Controls->Add(this->areaT);
			this->groupBox2->Controls->Add(this->areaC);
			this->groupBox2->Controls->Add(this->polares);
			this->groupBox2->Controls->Add(this->cart);
			this->groupBox2->Controls->Add(this->raizes);
			this->groupBox2->Location = System::Drawing::Point(247, 28);
			this->groupBox2->Name = L"groupBox2";
			this->groupBox2->Size = System::Drawing::Size(225, 142);
			this->groupBox2->TabIndex = 71;
			this->groupBox2->TabStop = false;
			this->groupBox2->Text = L"Func. Geométricas";
			// 
			// button1
			// 
			this->button1->Location = System::Drawing::Point(142, 368);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(55, 23);
			this->button1->TabIndex = 72;
			this->button1->Text = L"Mod";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &Calc::button1_Click_1);
			// 
			// modaCall
			// 
			this->modaCall->Location = System::Drawing::Point(115, 171);
			this->modaCall->Name = L"modaCall";
			this->modaCall->Size = System::Drawing::Size(84, 24);
			this->modaCall->TabIndex = 67;
			this->modaCall->Text = L"Moda";
			this->modaCall->UseVisualStyleBackColor = true;
			this->modaCall->Click += gcnew System::EventHandler(this, &Calc::modaCall_Click);
			// 
			// Calc
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(512, 596);
			this->Controls->Add(this->button1);
			this->Controls->Add(this->groupBox2);
			this->Controls->Add(this->groupBox1);
			this->Controls->Add(this->arranjo);
			this->Controls->Add(this->swap);
			this->Controls->Add(this->comb);
			this->Controls->Add(this->plotForm);
			this->Controls->Add(this->powerRoot);
			this->Controls->Add(this->square);
			this->Controls->Add(this->atg);
			this->Controls->Add(this->acos);
			this->Controls->Add(this->asin);
			this->Controls->Add(this->clr);
			this->Controls->Add(this->pi);
			this->Controls->Add(this->pow2);
			this->Controls->Add(this->pow10);
			this->Controls->Add(this->fat);
			this->Controls->Add(this->button2);
			this->Controls->Add(this->ln);
			this->Controls->Add(this->log);
			this->Controls->Add(this->inv);
			this->Controls->Add(this->pow);
			this->Controls->Add(this->sqrt);
			this->Controls->Add(this->tan);
			this->Controls->Add(this->cos);
			this->Controls->Add(this->sin);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->sum);
			this->Controls->Add(this->diff);
			this->Controls->Add(this->mult);
			this->Controls->Add(this->div);
			this->Controls->Add(this->dot);
			this->Controls->Add(this->num4);
			this->Controls->Add(this->num8);
			this->Controls->Add(this->num9);
			this->Controls->Add(this->num7);
			this->Controls->Add(this->num6);
			this->Controls->Add(this->num5);
			this->Controls->Add(this->num0);
			this->Controls->Add(this->num3);
			this->Controls->Add(this->num2);
			this->Controls->Add(this->num1);
			this->Controls->Add(this->stackBox);
			this->Controls->Add(this->label1);
			this->Name = L"Calc";
			this->Text = L"Calc";
			this->groupBox1->ResumeLayout(false);
			this->groupBox1->PerformLayout();
			this->groupBox2->ResumeLayout(false);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion

	private: System::Void num1_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("1");													//para facilitar a interface caso nao tenha teclado numerico
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}																				
	private: System::Void num2_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("2");													
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num3_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("3");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num4_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("4");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num5_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("5");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num6_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("6");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num7_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("7");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num8_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("8");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num9_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("9");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void num0_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText("0");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void dot_Click(System::Object^  sender, System::EventArgs^  e) {
				 stackBox->AppendText(",");
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: System::Void pi_Click(System::Object^  sender, System::EventArgs^  e) {
				 Double pi = Math::Acos(-1);
				 stackBox->AppendText(System::Convert::ToString(pi));
				 stackBox->Focus();
				 stackBox->SelectionStart = stackBox->Text->Length;
	}
	private: long long int fatorial(long long n){
				 if (n < 2) return 1;
				 else return n * fatorial(n - 1);
	}

	private: double volCilindro(double r, double h) {
				Double pi = Math::Acos(-1);

				return pi * Math::Pow(r, 2) * h;
	}

	private: double volEsfera(double r) {
				Double pi = Math::Acos(-1);

				return pi * Math::Pow(r, 3) * (4/3.0);
	}

	private: long long binomial(long long n, long long r){
				 return fatorial(n) / (fatorial(r)*fatorial(n - r));
	}

	private: double hyp(double a, double b){
				 return Math::Sqrt(Math::Pow(a, 2) + Math::Pow(b, 2));
	}

	private: double atan2(double x, double y){
				 double pi = Math::Acos(-1);
				 if (x > 0)	return Math::Atan(y/x);
				 if (x < 0 && y >= 0) return Math::Atan(y / x) + pi;
				 if (x < 0 && y < 0) return Math::Atan(y / x) - pi;
				 if (x == 0 && y > 0) return pi / 2;
				 if (x == 0 && y < 0) return -pi / 2;
				 // o caso x == 0 && y == 0 é indefinido, está bloqueado pela validação da entrada 
	}

	private: double somatorio(array<double>^ data){
				 double result = 0;
				 int i;
				 for (i = 0; i < data->Length; i++){
					 result += data[i];
				 }
				 return result;
	}

	private: double media(array<double>^ data){
				 return somatorio(data) / data->Length;
	}

	private: double mediaH(array<double>^ data){
				 double result = 0;
				 int i;
				 for (i = 0; i < data->Length; i++){
					 result += 1/data[i];
				 }
				 return data->Length/result;
	}

	private: double mediaG(array<double>^ data){
				 double result = 0;
				 double prod = produtorio(data);
				 int len = data->Length;
				 result = Math::Pow(prod, 1 /(double)len);
				 return result;
	}

	private: double mediana(int lista_tamanho, array<double> ^lista){
				 for (int i = 0; i < lista_tamanho - 1; i++) {
					 int minElemIndex = i;
					 for (int j = i; j < lista_tamanho; j++) {
						 if (lista[minElemIndex] > lista[j]) {
							 minElemIndex = j;
						 }
					 }
					 double aux = lista[i];
					 lista[i] = lista[minElemIndex];
					 lista[minElemIndex] = aux;
				 }

				 if (lista_tamanho % 2 == 0) {
					 return (lista[lista_tamanho / 2 - 1] + lista[lista_tamanho / 2]) / 2;
				 }

				 return lista[lista_tamanho / 2];
	}

	private: double moda(int lista_tamanho, array<double> ^lista)
			 {
				 array<double>^ fila = gcnew array<double>(lista_tamanho);
				 int fila_tamanho = 0;
				 array<double>^ contagem = gcnew array<double>(lista_tamanho);

				 for (int i = 0; i < lista_tamanho; i++) {
					 contagem[i] = 0;
				 }

				 for (int i = 0; i < lista_tamanho; i++) {
					 int repetido = 0;
					 for (int j = 0; j < fila_tamanho; j++) {
						 if (lista[i] == fila[j]) {
							 contagem[j]++;
							 repetido++;
						 }
					 }
					 if (!repetido) {
						 contagem[fila_tamanho]++;
						 fila[fila_tamanho++] = lista[i];
					 }
				 }

				 int max = 0;
				 for (int i = 0; i < fila_tamanho; i++) {
					 if (contagem[max] < contagem[i]) {
						 max = i;
					 }
				 }

				 int max_count = 0;
				 for (int i = 0; i < fila_tamanho; i++) {
					 if (contagem[max] == contagem[i]) {
						 max_count++;
					 }
				 }

				 array<double>^ moda;
				 if (lista_tamanho == fila_tamanho) {
					 moda = gcnew array<double>(1);
					 moda[0] = 0;
				 }
				 else {
					 moda = gcnew array<double>(max_count+1);
					 moda[0] = max_count;
					 int moda_index = 1;
					 for (int i = 0; i < fila_tamanho; i++) {
						 if (contagem[max] == contagem[i]) {
							 moda[moda_index++] = fila[i];
						 }
					 }
				 }

				 return moda[1];
	}

	private: double variance(array<double>^ data){
				 double avg = media(data);
				 double result = 0;
				 int i;
				 for (i = 0; i < data->Length; i++){
					 result += Math::Pow(data[i]-avg, 2);
				 }
				 result /= data->Length - 1;
				 return result;
	}

	private: double produtorio(array<double>^ data){
				 double result = 1;
				 int i;
				 for (i = 0; i < data->Length; i++){
					 result *= data[i];
				 }
				 return result;
	}
	
	private: void operUn(char c){
				 label1->ResetText();
				 int size = stackBox->Lines->Length;
				 if (size >= 1){
					 array<String^>^ tempArray = gcnew array<String^>(size);
					 tempArray = stackBox->Lines;
					 String ^inputA = tempArray[size - 1];
						try{
							double valueA = System::Convert::ToDouble(inputA);
							double result;
							switch (c)
							{
							case 's':
								result = Math::Sin(valueA);
								break;
							case 'S':
								result = Math::Asin(valueA);
								break;
							case 'c':
								result = Math::Cos(valueA);
								break;
							case 'C':
								result = Math::Acos(valueA);
								break;
							case 't':
								result = Math::Tan(valueA);
								break;
							case 'T':
								result = Math::Atan(valueA);
								break;
							case 'r':
								result = Math::Sqrt(valueA);
								break;
							case 'i':
								result = 1 / valueA;
								break;
							case 'l':
								result = Math::Log10(valueA);
								break;
							case 'n':
								result = Math::Log(valueA);
								break;
							case 'e':
								result = Math::Exp(valueA);
								break;
							case 'E':
								result = volEsfera(valueA);
								break;
							case 'd':
								result = Math::Pow(10, valueA);
								break;
							case '2':
								result = Math::Pow(2, valueA);
								break;
							case 'q':
								result = Math::Pow(valueA, 2);
								break;
							case 'f':
								//validação da entrada:
								if (valueA < 0){
									throw gcnew FormatException;
								}
								else if (Math::IEEERemainder(valueA, 1)){
									throw gcnew FormatException;
								}
								result = (double)fatorial((long)valueA);
								break;
							case 'a':
								result = Math::Acos(-1)*Math::Pow(valueA,2);
								break;
							default:
								break;
							}

							String ^output = System::Convert::ToString(result);
							array<String^>^ newLines = gcnew array<String^>(stackBox->Lines->Length);
							int i;
							for (i = 0; i < (tempArray->Length) - 1; i++){
								newLines[i] = tempArray[i];
							}
							newLines[newLines->Length - 1] = output;
							stackBox->Lines = newLines;
							stackBox->Focus();
							stackBox->SelectionStart = stackBox->Text->Length;
						}
						catch (FormatException^ e){
							label1->Text = "ERRO: entrada invalida";
						}
				 }
				else{
					label1->Text = "ERRO: operacao requer 1 operando";
				}
	}

	private: void operBin(char c){
				 label1->ResetText();
				 int size = stackBox->Lines->Length;
				 if (size >= 2){
					 array<String^>^ tempArray = gcnew array<String^>(size);
					 tempArray = stackBox->Lines;
					 String ^inputA = tempArray[size - 2];
					 String ^inputB = tempArray[size - 1];
						try{
							double valueA = System::Convert::ToDouble(inputA);
							double valueB = System::Convert::ToDouble(inputB);
							double result;
							switch (c)
							{
							case '+':
								result = valueA + valueB;
								break;
							case '-':
								result = valueA - valueB;
								break;
							case '*':
								result = valueA * valueB;
								break;
							case '/':
								result = valueA / valueB;
								break;
							case 'p':
								result = Math::Pow(valueA, valueB);
								break;
							case 'r':
								result = Math::Pow(valueA, 1/valueB);
								break;
							case 'h':
								result = hyp(valueA, valueB);
								break;
							case 'M':
								result = (double)(((int) valueA % (int)valueB));
								break;
							case 'C':
								result = volCilindro(valueA, valueB);
								break;
							case 'c':
								//validação da entrada:
								if (valueA < 0 || valueB < 0){
									throw gcnew FormatException;
								}
								if (Math::IEEERemainder(valueA, 1) != 0 || Math::IEEERemainder(valueB, 1) != 0){
									throw gcnew FormatException;
								}
								if (valueA < valueB){
									throw gcnew FormatException;
								}
								result = (double)binomial((long)valueA, (long)valueB);
								break;
							case 'a':
								//validação da entrada:
								if (valueA < 0 || valueB < 0){
									throw gcnew FormatException;
								}
								if (Math::IEEERemainder(valueA, 1) != 0 || Math::IEEERemainder(valueB, 1) != 0){
									throw gcnew FormatException;
								}
								if (valueA < valueB){
									throw gcnew FormatException;
								}
								result = (double)binomial((long)valueA, (long)valueB) * fatorial(valueB);
								break;
							default:
								break;
							}

							String ^output = System::Convert::ToString(result);
							array<String^>^ newLines = gcnew array<String^>(stackBox->Lines->Length - 1);
							int i;
							for (i = 0; i < (tempArray->Length) - 2; i++){
								newLines[i] = tempArray[i];
							}
							newLines[newLines->Length - 1] = output;
							stackBox->Lines = newLines;
							stackBox->Focus();
							stackBox->SelectionStart = stackBox->Text->Length;
						}
						catch (FormatException^ e){
							label1->Text = "ERRO: entrada invalida";			
						}
				 }
				 else{
					 label1->Text = "ERRO: operacao requer 2 operandos";
				 }
	}

private: void operWhole(char c){
			label1->ResetText();
			int size = stackBox->Lines->Length;
			if (size >= 1){
				array<String^>^ tempArray = gcnew array<String^>(size);
				array<double>^ values = gcnew array<double>(size);
				tempArray = stackBox->Lines;
				try{
					int i;
					for (i = 0; i < size; i++){
						values[i] = System::Convert::ToDouble(tempArray[i]);
					}
					double result = 0;
					switch (c)
					{
					case '+':
						result = somatorio(values);
						break;
					case 'm':
						result = media(values);
						break;
					case 'p':
						result = produtorio(values);
						break;
					case 'v':
						result = variance(values);
						break;
					case 'd':
						result = Math::Sqrt(variance(values));
						break;
					case 'h':
						result = mediaH(values);
						break;
					case 'g':
						result = mediaG(values);
						break;
					case 'n':
						result = mediana(size, values);
						break;
					case 'o':
						result = moda(size, values);
						break;
					default:
						break;
					}

					String ^output = System::Convert::ToString(result);
					statOutput->Text = output;
					stackBox->Focus();
					stackBox->SelectionStart = stackBox->Text->Length;
				}
				catch (FormatException^ e){
					label1->Text = "ERRO: entrada invalida";
				}
			}
			else{
				label1->Text = "ERRO: operacao requer ao menos 1 operando";
			}
}

private: void oper2a2(char c){
			 label1->ResetText();
			 int size = stackBox->Lines->Length;
			 if (size >= 2){
				 array<String^>^ tempArray = gcnew array<String^>(size);
				 tempArray = stackBox->Lines;
				 String ^inputA = tempArray[size - 2];
				 String ^inputB = tempArray[size - 1];
					try{
						double valueA = System::Convert::ToDouble(inputA);
						double valueB = System::Convert::ToDouble(inputB);
						double resultA, resultB;
						switch (c)
						{
						case 'a':
							//validação da entrada:
							if (valueA == 0 && valueB == 0){
								throw gcnew FormatException;
							}
							resultA = hyp(valueA, valueB);
							resultB = atan2(valueA, valueB);
							break;
						case 'c':
							resultA = valueA*Math::Cos(valueB);
							resultB = valueA*Math::Sin(valueB);
							break;
						case 's':
							resultA = valueB;
							resultB = valueA;
						default:
							break;
						}

						String ^outputA = System::Convert::ToString(resultA);
						String ^outputB = System::Convert::ToString(resultB);
						array<String^>^ newLines = gcnew array<String^>(stackBox->Lines->Length);
						int i;
						for (i = 0; i < (tempArray->Length) - 2; i++){
							newLines[i] = tempArray[i];
						}
						newLines[newLines->Length - 2] = outputA;
						newLines[newLines->Length - 1] = outputB;
						stackBox->Lines = newLines;
						stackBox->Focus();
						stackBox->SelectionStart = stackBox->Text->Length;
					}
					catch (FormatException^ e){
						label1->Text = "ERRO: entrada invalida";
					}
			 }
			 else{
				 label1->Text = "ERRO: operacao requer 2 operandos";
			 }
}

private: void oper3a2(char c){
			 label1->ResetText();
			 int size = stackBox->Lines->Length;
			 if (size >= 2){
				 array<String^>^ tempArray = gcnew array<String^>(size);
				 tempArray = stackBox->Lines;
				 String ^inputA = tempArray[size - 3];
				 String ^inputB = tempArray[size - 2];
				 String ^inputC = tempArray[size - 1];
					 try{
						 double valueA = System::Convert::ToDouble(inputA);
						 double valueB = System::Convert::ToDouble(inputB);
						 double valueC = System::Convert::ToDouble(inputC);
						 double resultA, resultB;
						 double delta;
						 Boolean ehTriangulo;
						 double semiPerimeter;
						 
						 switch (c)
						 {
						 case 'r':
							 delta = valueB*valueB - 4 * valueA*valueC;

							 if (delta < 0){
								 label1->Text = "ERRO: não há raízes reais";
							 }
							 else if (delta == 0){
								 resultA = -valueB / (2 * valueA);
								 String ^output = System::Convert::ToString(resultA);
								 array<String^>^ newLines = gcnew array<String^>(stackBox->Lines->Length - 2);
								 int i;
								 for (i = 0; i < (tempArray->Length) - 3; i++){
									 newLines[i] = tempArray[i];
								 }
								 newLines[newLines->Length - 1] = output;
								 stackBox->Lines = newLines;
								 stackBox->Focus();
								 stackBox->SelectionStart = stackBox->Text->Length;
							 }
							 else{
								 resultA = (-valueB + Math::Sqrt(delta)) / (2 * valueA);
								 resultB = (-valueB - Math::Sqrt(delta)) / (2 * valueA);
								 String ^outputA = System::Convert::ToString(resultA);
								 String ^outputB = System::Convert::ToString(resultB);
								 array<String^>^ newLines = gcnew array<String^>(stackBox->Lines->Length-1);
								 int i;
								 for (i = 0; i < (tempArray->Length) - 3; i++){
									 newLines[i] = tempArray[i];
								 }
								 newLines[newLines->Length - 2] = outputA;
								 newLines[newLines->Length - 1] = outputB;
								 stackBox->Lines = newLines;
								 stackBox->Focus();
								 stackBox->SelectionStart = stackBox->Text->Length;
							 }
							 break;
						 case 't':
							 ehTriangulo = true;
							 if (valueA <= Math::Abs(valueB - valueC) || valueA >= valueB + valueC) ehTriangulo = false;
							 if (valueB <= Math::Abs(valueC - valueA) || valueA >= valueC + valueA) ehTriangulo = false;
							 if (valueC <= Math::Abs(valueA - valueB) || valueA >= valueA + valueB) ehTriangulo = false;
							 if (ehTriangulo){
								 semiPerimeter = (valueA + valueB + valueC) / 2;
								 resultA = Math::Sqrt(semiPerimeter*(semiPerimeter-valueA)*(semiPerimeter-valueB)*(semiPerimeter-valueC));
								 String ^output = System::Convert::ToString(resultA);
								 array<String^>^ newLines = gcnew array<String^>(stackBox->Lines->Length - 2);
								 int i;
								 for (i = 0; i < (tempArray->Length) - 3; i++){
									 newLines[i] = tempArray[i];
								 }
								 newLines[newLines->Length - 1] = output;
								 stackBox->Lines = newLines;
								 stackBox->Focus();
								 stackBox->SelectionStart = stackBox->Text->Length;
							 }
							 else{
								 label1->Text = "ERRO: lados informados não formam um triângulo";
							 }
							 break;
						 default:
							 break;
						 }
					 }
					 catch (FormatException^ e){
						 label1->Text = "ERRO: entrada invalida";
					 }
			 }
			 else{
				 label1->Text = "ERRO: operacao requer 2 operandos";
			 }
}

private: System::Void sum_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('+');
}
private: System::Void diff_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('-');
}
private: System::Void div_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('/');
}
private: System::Void mult_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('*');
}
private: System::Void sin_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('s');
}
private: System::Void cos_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('c');
}
private: System::Void tan_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('t');
}
private: System::Void sqrt_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('r');
}
private: System::Void pow_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('p');
}
private: System::Void inv_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('i');
}
private: System::Void log_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('l');
}
private: System::Void ln_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('n');
}
private: System::Void button2_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('e');
}
private: System::Void hipotenusa_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('h');
}
private: System::Void fat_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('f');
}
private: System::Void comb_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('c');
}
private: System::Void polares_Click(System::Object^  sender, System::EventArgs^  e) {
			 oper2a2('a');
}
private: System::Void cart_Click(System::Object^  sender, System::EventArgs^  e) {
			 oper2a2('c');
}
private: System::Void raizes_Click(System::Object^  sender, System::EventArgs^  e) {
			 oper3a2('r');
}
private: System::Void stackBox_KeyPress(System::Object^  sender, System::Windows::Forms::KeyPressEventArgs^  e) {
			 switch (e->KeyChar)
			 {
			 case '+':
				 operBin('+');
				 e->Handled = true;
				 break;
			 case '-':
				 int size;
				 size = stackBox->Lines->Length;
				 if (size > 0){
					 if (String::IsNullOrEmpty(stackBox->Lines[size - 1]->ToString())){
						 stackBox->AppendText("-");
					 }
					 else{
						 operBin('-');
					 }
				 }
				 else{
					 stackBox->AppendText("-");
				 }
				 e->Handled = true;
				 break;
			 case '*':
				 operBin('*');
				 e->Handled = true;
				 break;
			 case '/':
				 operBin('/');
				 e->Handled = true;
				 break;
			 case 's':
				 operUn('s');
				 e->Handled = true;
				 break;
			 case 'c':
				 operUn('c');
				 e->Handled = true;
				 break;
			 case 't':
				 operUn('t');
				 e->Handled = true;
				 break;
			 case 'r':
				 operUn('r');
				 e->Handled = true;
				 break;
			 case 'l':
				 operUn('l');
				 e->Handled = true;
				 break;
			 case 'n':
				 operUn('n');
				 e->Handled = true;
				 break;
			 case 'e':
				 operUn('e');
				 e->Handled = true;
				 break;
			 case ',':
				 break;
			 case (char)8:
				 break;
			 default:
				 if (!(Char::IsDigit(e->KeyChar)) && e->KeyChar != (char)13){		//so permite entrar digitos ou Enter
					 e->Handled = true;
				 }
				 break;
			 }
}
private: System::Void pow10_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('d');
}
private: System::Void pow2_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('2');
}

private: System::Void addAll_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('+');
}
private: System::Void avg_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('m');
}
private: System::Void prod_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('p');
}
private: System::Void dev_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('d');
}
private: System::Void var_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('v');
}
private: System::Void clr_Click(System::Object^  sender, System::EventArgs^  e) {
			 stackBox->Clear();
			 stackBox->Focus();
}
private: System::Void asin_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('S');
}
private: System::Void acos_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('C');
}
private: System::Void atg_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('T');
}
private: System::Void square_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('q');
}
private: System::Void powerRoot_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('r');
}
private: System::Void send_Click(System::Object^  sender, System::EventArgs^  e) {
			 stackBox->AppendText("\r\n");
			 stackBox->AppendText(statOutput->Text);
			 stackBox->Focus();
			 stackBox->SelectionStart = stackBox->Text->Length;
}

private: System::Void plotForm_Click(System::Object^  sender, System::EventArgs^  e) {
			 Plot ^frm = gcnew Plot;
			 frm->Show(this);
}

private: System::Void swap_Click(System::Object^  sender, System::EventArgs^  e) {
			 oper2a2('s');
}
private: System::Void areaT_Click(System::Object^  sender, System::EventArgs^  e) {
			 oper3a2('t');
}
private: System::Void areaC_Click(System::Object^  sender, System::EventArgs^  e) {
			 operUn('a');
}
private: System::Void arranjo_Click(System::Object^  sender, System::EventArgs^  e) {
			 operBin('a');
}
private: System::Void harm_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('h');
}
private: System::Void button1_Click(System::Object^  sender, System::EventArgs^  e) {
}
private: System::Void button1_Click_1(System::Object^  sender, System::EventArgs^  e) {
			operBin('M');
}
private: System::Void button3_Click(System::Object^  sender, System::EventArgs^  e) {
			operUn('E');
}
private: System::Void button4_Click(System::Object^  sender, System::EventArgs^  e) {
			operBin('C');
}
private: System::Void geom_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('g');
}
private: System::Void medi_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('n');
}
private: System::Void modaCall_Click(System::Object^  sender, System::EventArgs^  e) {
			 operWhole('o');
}
};
}
