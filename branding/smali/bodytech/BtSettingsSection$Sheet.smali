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

.field final open:[Z

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final test:Lcom/isaigu/gymapp/bodytech/BtTest;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    .line 86
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 87
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 88
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c bodytech"

    const-string v1, "\u041a\u0430\u043d\u0430\u043b\u0438 C1\u2013C8 \u2192 \u0441\u043b\u0430\u0439\u0434\u0435\u0440\u0438 \u043d\u0430 XEMS"

    const/16 v2, 0x3d4

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 89
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtTest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Redraw;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Redraw;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTest;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 90
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 91
    const-string v0, "\u041f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435"

    invoke-static {p1, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-string v2, "\u041f\u043e\u0434\u0440\u0435\u0434\u0438 \u043b\u044f\u0432\u043e \u2192 \u0434\u044f\u0441\u043d\u043e"

    invoke-static {p1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 101
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    return-void
.end method


# virtual methods
.method channel(I)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v13, 0x40c00000    # 6.0f

    const/16 v11, 0x22

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v5, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 159
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

    if-eqz v0, :cond_127

    const-string v0, ""

    :goto_57
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const-string v0, "\u0418\u043c\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430"

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 162
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 163
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 164
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 165
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v5, v0, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 168
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;-><init>(I)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->positionOf(I)I

    move-result v5

    .line 171
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v8, "\u25b2"

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    if-lez v5, :cond_12d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_a4
    invoke-static {v7, v8, v9, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v7

    .line 172
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;

    invoke-direct {v0, p0, p1, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v9, "\u25bc"

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 174
    const/4 v0, 0x7

    if-ge v5, v0, :cond_131

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 173
    :goto_bb
    invoke-static {v8, v9, v10, v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 175
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;

    invoke-direct {v5, p0, p1, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v9, 0x42080000    # 34.0f

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v8, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 178
    invoke-virtual {v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v7, "\u25b6"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {v0, v7, v8, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 181
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v7, p1}, Lcom/isaigu/gymapp/bodytech/BtTest;->touch(I)Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 186
    new-array v8, v3, [Landroid/widget/LinearLayout;

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v9

    move v0, v1

    .line 188
    :goto_114
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15f

    .line 189
    if-gez v0, :cond_134

    move v5, v1

    .line 191
    :goto_11c
    if-nez v5, :cond_13a

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    if-eqz v2, :cond_13a

    .line 188
    :goto_124
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 159
    :cond_127
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_57

    .line 171
    :cond_12d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_a4

    .line 174
    :cond_131
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_bb

    .line 189
    :cond_134
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->ROW_ORDER:[I

    aget v2, v2, v0

    move v5, v2

    goto :goto_11c

    .line 192
    :cond_13a
    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->sliderName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    if-ne v2, v5, :cond_15d

    move v2, v3

    :goto_147
    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 193
    new-instance v10, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;

    invoke-direct {v10, p0, v4, p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget-object v10, v8, v4

    invoke-static {v5, v10, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_124

    :cond_15d
    move v2, v4

    .line 192
    goto :goto_147

    .line 196
    :cond_15f
    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0420\u0430\u0431\u043e\u0442\u0438 \u0432 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->GROUPS:[Ljava/lang/String;

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1d2

    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u25b4"

    :goto_19c
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v2, v2, p1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 205
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 206
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1d1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->params(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_1d1
    return-object v6

    .line 202
    :cond_1d2
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u25be"

    goto :goto_19c
.end method

.method field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;
    .registers 8

    .prologue
    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, p2, v2, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
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

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 215
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
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

    .line 218
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v0

    .line 219
    const-string v3, "\u0428\u0438\u0440\u0438\u043d\u0430"

    if-nez v0, :cond_cd

    const-string v0, "\u0410\u0432\u0442\u043e"

    :goto_50
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;

    invoke-direct {v4, p0, p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V

    invoke-virtual {p0, v3, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->field(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    .line 220
    invoke-static {v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 219
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 223
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 224
    invoke-static {p1, v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 225
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v3

    .line 226
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

    .line 228
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

    .line 229
    invoke-static {v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 228
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v2, "\u0410\u0432\u0442\u043e = \u043a\u0430\u043a\u0442\u043e \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430. \u041f\u044a\u043b\u043d\u0438\u0442\u0435 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 (\u043e\u0442\u0434\u0435\u043b\u043d\u043e \u0437\u0430 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441, \u0444\u043e\u0440\u043c\u0430, \u0431\u0435\u0437 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f) \u2014 \u043e\u0442 \u0437\u044a\u0431\u0447\u0430\u0442\u043e\u0442\u043e \u043a\u043e\u043b\u0435\u043b\u043e \u043d\u0430 \u0440\u0435\u0434\u0430."

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    return-object v1

    .line 219
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

    .line 226
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

    .line 228
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

    const/4 v12, -0x2

    const/4 v5, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtTest;->panel()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 121
    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    move v6, v4

    .line 124
    :goto_38
    const/16 v0, 0x8

    if-ge v6, v0, :cond_5e

    .line 125
    if-ge v6, v10, :cond_59

    move-object v0, v1

    .line 126
    :goto_3f
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->channel(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    if-eqz v6, :cond_4d

    if-ne v6, v10, :cond_5b

    :cond_4d
    move v3, v4

    :goto_4e
    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_38

    :cond_59
    move-object v0, v2

    .line 125
    goto :goto_3f

    .line 126
    :cond_5b
    const/16 v3, 0xa

    goto :goto_4e

    .line 128
    :cond_5e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v11, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 133
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-array v6, v5, [Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    .line 138
    const/4 v0, -0x1

    move v1, v0

    :goto_9e
    const/4 v0, 0x3

    if-gt v1, v0, :cond_cb

    .line 139
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    aget-object v9, v0, v9

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v0

    if-ne v0, v1, :cond_c9

    move v0, v5

    :goto_b0
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 140
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;

    invoke-direct {v8, p0, v5, v4, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    aget-object v9, v6, v4

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9e

    :cond_c9
    move v0, v4

    .line 139
    goto :goto_b0

    .line 143
    :cond_cb
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const-string v5, "\u0421\u0438\u043b\u0430 (\u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u0430\u043d\u0430\u043b\u0438)"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
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

    .line 148
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    invoke-static {v11, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 114
    return-void
.end method

.method stopHold()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->test:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTest;->stop()V

    .line 109
    return-void
.end method
