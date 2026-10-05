.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sheet"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final handler:Landroid/os/Handler;

.field hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

.field level:I

.field final open:[Z

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->handler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 92
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 93
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c bodytech"

    const-string v1, "\u041a\u0430\u043d\u0430\u043b\u0438 C1\u2013C8 \u2192 \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0438 \u043d\u0430 XEMS"

    const/16 v2, 0x3d4

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 94
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 95
    const-string v0, "\u041f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435"

    invoke-static {p1, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 98
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-string v2, "\u041f\u043e\u0434\u0440\u0435\u0434\u0438 \u043b\u044f\u0432\u043e \u2192 \u0434\u044f\u0441\u043d\u043e"

    invoke-static {p1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 100
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 105
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method


# virtual methods
.method channel(I)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v13, 0x40c00000    # 6.0f

    const/16 v11, 0x22

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    const-string v0, ""

    :goto_57
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const-string v0, "\u0418\u043c\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430"

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 181
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 183
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 184
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 187
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I

    move-result v3

    .line 190
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v8, "\u25b2"

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    if-lez v3, :cond_146

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_a4
    invoke-static {v7, v8, v9, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v7

    .line 191
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;

    invoke-direct {v0, p0, p1, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v9, "\u25bc"

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 193
    const/4 v0, 0x7

    if-ge v3, v0, :cond_14a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 192
    :goto_bb
    invoke-static {v8, v9, v10, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 194
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;

    invoke-direct {v3, p0, p1, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v9, 0x42080000    # 34.0f

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v8, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 197
    invoke-virtual {v2, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v7, "\u25b6"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {v0, v7, v8, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 200
    new-instance v7, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;

    invoke-direct {v7, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$TestTouch;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 205
    new-array v8, v4, [Landroid/widget/LinearLayout;

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v9

    move v0, v1

    .line 207
    :goto_113
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    array-length v2, v2

    if-ge v0, v2, :cond_155

    .line 208
    if-gez v0, :cond_14e

    move v2, v1

    .line 209
    :goto_11b
    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->sliderName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v3

    if-ne v3, v2, :cond_153

    move v3, v4

    :goto_128
    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v10, v11, v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 210
    new-instance v10, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;

    invoke-direct {v10, p0, v5, p1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget-object v10, v8, v5

    invoke-static {v2, v10, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    .line 178
    :cond_140
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 190
    :cond_146
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_a4

    .line 193
    :cond_14a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_bb

    .line 208
    :cond_14e
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    aget v2, v2, v0

    goto :goto_11b

    :cond_153
    move v3, v5

    .line 209
    goto :goto_128

    .line 213
    :cond_155
    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0420\u0430\u0431\u043e\u0442\u0438 \u0432 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 216
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1c8

    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u25b4"

    :goto_192
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v2, v2, p1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 222
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 223
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1c7

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->params(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_1c7
    return-object v6

    .line 219
    :cond_1c8
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u25be"

    goto :goto_192
.end method

.method field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;
    .registers 8

    .prologue
    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, p2, v2, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    return-object v0
.end method

.method params(I)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v10, -0x2

    const/16 v9, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 232
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 233
    const-string v0, "\u0421\u0438\u043b\u0430"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    invoke-direct {v4, p0, p1, v7}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v0, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v0

    .line 236
    const-string v3, "\u0428\u0438\u0440\u0438\u043d\u0430"

    if-nez v0, :cond_cd

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_50
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    invoke-direct {v4, p0, p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v3, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 237
    invoke-static {v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 236
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 240
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 241
    invoke-static {p1, v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 242
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v3

    .line 243
    const-string v4, "Hz \u043e\u0441\u043d\u043e\u0432\u0435\u043d"

    if-nez v0, :cond_e2

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_7e
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    const/4 v6, 0x2

    invoke-direct {v5, p0, p1, v6}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v4, v0, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const-string v4, "Hz \u0432\u0442\u043e\u0440\u0438"

    if-nez v3, :cond_f6

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_96
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    const/4 v5, 0x3

    invoke-direct {v3, p0, p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v4, v0, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 246
    invoke-static {v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v2, "\u0410\u0432\u0442\u043e = \u043a\u0430\u043a\u0442\u043e \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. Hz \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u043c\u043e\u0433\u0430\u0442 \u0441\u0430\u043c\u043e \u0434\u0430 \u043d\u0430\u043c\u0430\u043b\u044f\u0442 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0442\u0430 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 250
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    return-object v1

    .line 236
    :cond_cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u00b5s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 243
    :cond_e2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 245
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_96
.end method

.method render()V
    .registers 14

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x1

    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v2, "\u0422\u0435\u0441\u0442 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b: \u0434\u0440\u044a\u0436 \u25b6 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430, \u0437\u0430 \u0434\u0430 \u0443\u0441\u0435\u0442\u0438\u0448 \u043a\u043e\u0439 \u043c\u0443\u0441\u043a\u0443\u043b \u0440\u0430\u0431\u043e\u0442\u0438. \u041d\u0438\u0432\u043e:"

    const/high16 v3, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 131
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    new-instance v7, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-static {v1, v2, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v6, 0x433e0000    # 190.0f

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0442\u0440\u044f\u0431\u0432\u0430 \u0434\u0430 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430. \u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u043e\u0442 \u043d\u0430\u0439-\u043d\u0438\u0441\u043a\u043e\u0442\u043e \u043d\u0438\u0432\u043e."

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 140
    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    move v6, v4

    .line 143
    :goto_a7
    const/16 v0, 0x8

    if-ge v6, v0, :cond_cd

    .line 144
    if-ge v6, v10, :cond_c8

    move-object v0, v1

    .line 145
    :goto_ae
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->channel(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    if-eqz v6, :cond_bc

    if-ne v6, v10, :cond_ca

    :cond_bc
    move v3, v4

    :goto_bd
    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_a7

    :cond_c8
    move-object v0, v2

    .line 144
    goto :goto_ae

    .line 145
    :cond_ca
    const/16 v3, 0xa

    goto :goto_bd

    .line 147
    :cond_cd
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v11, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 152
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    new-array v6, v5, [Landroid/widget/LinearLayout;

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    .line 157
    const/4 v0, -0x1

    move v1, v0

    :goto_10d
    const/4 v0, 0x3

    if-gt v1, v0, :cond_13a

    .line 158
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v9, v0, v9

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v0

    if-ne v0, v1, :cond_138

    move v0, v5

    :goto_11f
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 159
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;

    invoke-direct {v8, p0, v5, v4, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget-object v9, v6, v4

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10d

    :cond_138
    move v0, v4

    .line 158
    goto :goto_11f

    .line 162
    :cond_13a
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v5, "\u0421\u0438\u043b\u0430 (\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438)"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0430"

    const/high16 v7, 0x41a00000    # 20.0f

    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-static {v1, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 167
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v11, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 123
    return-void
.end method

.method stopHold()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    if-eqz v0, :cond_13

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    iput-boolean v2, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->live:Z

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->hold:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;

    .line 117
    :cond_13
    invoke-static {v2, v2, v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(IIZ)Ljava/lang/String;

    .line 118
    return-void
.end method
