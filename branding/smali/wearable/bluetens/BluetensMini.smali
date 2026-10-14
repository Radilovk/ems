.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;
.super Ljava/lang/Object;
.source "BluetensMini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Stop;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;
    }
.end annotation


# static fields
.field static final TINT:I = -0xcb2c67


# instance fields
.field final a:Landroid/app/Activity;

.field d:Landroid/app/Dialog;

.field dot:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field pads:Landroid/widget/TextView;

.field final page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

.field final prefs:Landroid/content/SharedPreferences;

.field stop:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Landroid/content/SharedPreferences;)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 48
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->prefs:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method


# virtual methods
.method build()V
    .registers 13

    .prologue
    const v11, -0xcb2c67

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 56
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 61
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 62
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v4

    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 63
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xaa

    invoke-static {v11, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 66
    new-instance v7, Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 68
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 69
    const/16 v0, 0x2e

    invoke-static {v11, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v8

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v4, 0x13

    invoke-direct {v2, v4, v11}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 71
    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 73
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42300000    # 44.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 78
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    .line 80
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11, v4, v8, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41b00000    # 22.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v5, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->time:Landroid/widget/TextView;

    .line 83
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->time:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 87
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->time:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    const-string v4, ""

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v3, v4, v5, v11, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->pads:Landroid/widget/TextView;

    .line 89
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->pads:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->name:Landroid/widget/TextView;

    .line 95
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 96
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->name:Landroid/widget/TextView;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 97
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->name:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 98
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 102
    invoke-virtual {v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    const-string v2, "\u25a0"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/16 v5, 0x28

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->stop:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->stop:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Stop;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Stop;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 108
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->stop:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    const-string v2, "\u203a"

    const/high16 v3, 0x41d00000    # 26.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_250

    .line 117
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {v0, v9, v9}, Landroid/view/Window;->setLayout(II)V

    .line 119
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 121
    const/16 v1, 0x228

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 123
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 124
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "mini_x"

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v7, 0x3f0f5c29    # 0.56f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 127
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "mini_y"

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 128
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 133
    :cond_250
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->immersive(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method dropped()V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 203
    :goto_a
    if-eqz v0, :cond_2d

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mini_x"

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mini_y"

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :cond_2d
    return-void

    .line 202
    :cond_2e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method hide()V
    .registers 2

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_15

    .line 160
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    .line 161
    return-void

    .line 158
    :catch_15
    move-exception v0

    goto :goto_11
.end method

.method moved(II)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 192
    :goto_b
    if-nez v0, :cond_10

    .line 199
    :goto_d
    return-void

    .line 191
    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    .line 195
    :cond_10
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 196
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 197
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_d
.end method

.method show()V
    .registers 5

    .prologue
    const v3, 0x3f59999a    # 0.85f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-nez v0, :cond_c

    .line 138
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->build()V

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_53

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 143
    :goto_2b
    if-eqz v0, :cond_53

    .line 144
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->immersive(Landroid/view/View;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 151
    :cond_53
    return-void

    .line 142
    :cond_54
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method showing()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-nez v0, :cond_8

    .line 188
    :cond_7
    :goto_7
    return-void

    .line 172
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->time:Landroid/widget/TextView;

    if-eqz p5, :cond_10

    if-nez p4, :cond_10

    const-string p1, "\u2713"

    :cond_10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->time:Landroid/widget/TextView;

    if-eqz p5, :cond_79

    if-nez p4, :cond_79

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->pads:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->pads:Landroid/widget/TextView;

    if-eqz p4, :cond_7c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7c

    move v0, v1

    :goto_33
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->stop:Landroid/widget/TextView;

    if-eqz p4, :cond_3b

    move v2, v1

    :cond_3b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    if-eqz p4, :cond_7e

    const v0, -0xcb2c67

    :goto_45
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    if-eqz p4, :cond_81

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_81

    .line 180
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 182
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 183
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 184
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    .line 173
    :cond_79
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1b

    :cond_7c
    move v0, v2

    .line 176
    goto :goto_33

    .line 178
    :cond_7e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_45

    .line 185
    :cond_81
    if-nez p4, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_7
.end method
