.class final Lcom/isaigu/gymapp/bodytech/BtGear$Choice;
.super Ljava/lang/Object;
.source "BtGear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtGear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Choice"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final gear:Landroid/view/View;

.field final mac:Ljava/lang/String;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/16 v7, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->a:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->gear:Landroid/view/View;

    .line 68
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->mac:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 70
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c bodytech"

    const/4 v1, 0x0

    const/16 v2, 0x208

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 71
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    invoke-static {p1, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtGear$Program;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtGear$Program;-><init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v1, "\u041f\u044a\u043b\u043d\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    invoke-static {p1, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtGear$Full;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/bodytech/BtGear$Full;-><init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-string v2, "\u0422\u0435\u0441\u0442\u043e\u0432 \u0440\u0435\u0436\u0438\u043c"

    invoke-static {p1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtGear$Test;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/bodytech/BtGear$Test;-><init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-string v3, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a"

    invoke-static {p1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 78
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtGear$Aus;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/bodytech/BtGear$Aus;-><init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const-string v0, "\u041f\u044a\u043b\u043d\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438: Hz \u0434\u043e 1000, \u0448\u0438\u0440\u0438\u043d\u0430 \u0434\u043e 511 \u00b5s, \u0444\u043e\u0440\u043c\u0430 \u0438 \u0441\u0438\u043b\u0430 \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u0438 \u0432\u0441\u0435\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441. \u0422\u0435\u0441\u0442\u043e\u0432 \u0440\u0435\u0436\u0438\u043c: \u043f\u0440\u043e\u0431\u0432\u0430\u0448 \u0433\u0438, \u0431\u0435\u0437 \u0434\u0430 \u043f\u0438\u043f\u0430\u0448 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. \u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a: \u0433\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438 \u0441 1 kHz \u0442\u043e\u043a."

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p1, v0, v8, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 85
    invoke-static {p1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method


# virtual methods
.method show()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 91
    return-void
.end method
