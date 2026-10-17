.class final Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;
.super Ljava/lang/Object;
.source "SuitStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/SuitStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Col"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field mac:Ljava/lang/String;

.field final note:Landroid/widget/TextView;

.field final tiles:[Landroid/widget/TextView;

.field final view:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 13

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-array v0, v9, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->tiles:[Landroid/widget/TextView;

    .line 165
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    .line 166
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    const-string v2, "xems_suit_standard"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 172
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_3f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->header(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 180
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "XEMS"

    aput-object v0, v3, v1

    const-string v0, "X-Body"

    aput-object v0, v3, v8

    move v0, v1

    .line 182
    :goto_64
    if-ge v0, v9, :cond_a6

    .line 183
    aget-object v4, v3, v0

    const/high16 v5, 0x41b00000    # 22.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 184
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    new-instance v5, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;

    invoke-direct {v5, p0, v0}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;-><init>(Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 187
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42900000    # 72.0f

    .line 188
    invoke-static {p1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 190
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->tiles:[Landroid/widget/TextView;

    aput-object v4, v5, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 174
    :cond_9e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_3f

    .line 193
    :cond_a6
    const-string v0, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->note:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->note:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->render()V

    .line 197
    return-void
.end method

.method private header(Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    const-string v1, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442"

    const-string v2, "Standard"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 202
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 204
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_87

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_87

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 205
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_87

    .line 206
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 208
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_69

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 211
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_69
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_87

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_87

    .line 214
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    :goto_7d
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-object v2

    :cond_87
    move v0, v1

    goto :goto_7d
.end method


# virtual methods
.method params(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 222
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 223
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 224
    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    return-object v0
.end method

.method render()V
    .registers 13

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v11, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7b

    move v7, v2

    .line 230
    :goto_13
    if-eqz v7, :cond_7d

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->get(Ljava/lang/String;)I

    move-result v0

    .line 231
    :goto_1b
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v8, v1

    move v6, v3

    .line 232
    :goto_25
    const/4 v1, 0x2

    if-ge v6, v1, :cond_9d

    .line 233
    if-ne v6, v0, :cond_7f

    move v1, v2

    .line 234
    :goto_2b
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->tiles:[Landroid/widget/TextView;

    aget-object v9, v4, v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_81

    const-string v4, "\u2713 "

    :goto_38
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v6, :cond_84

    const-string v4, "XEMS"

    :goto_40
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->tiles:[Landroid/widget/TextView;

    aget-object v9, v4, v6

    if-eqz v1, :cond_87

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_53
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->tiles:[Landroid/widget/TextView;

    aget-object v4, v4, v6

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v1, v9, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 237
    :goto_64
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 236
    invoke-static {v1, v9, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->tiles:[Landroid/widget/TextView;

    aget-object v4, v1, v6

    if-eqz v7, :cond_99

    move v1, v5

    :goto_74
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 232
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_25

    :cond_7b
    move v7, v3

    .line 229
    goto :goto_13

    .line 230
    :cond_7d
    const/4 v0, -0x1

    goto :goto_1b

    :cond_7f
    move v1, v3

    .line 233
    goto :goto_2b

    .line 234
    :cond_81
    const-string v4, ""

    goto :goto_38

    :cond_84
    const-string v4, "X-Body"

    goto :goto_40

    .line 235
    :cond_87
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_53

    .line 237
    :cond_8a
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->c:Landroid/content/Context;

    invoke-static {v10, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto :goto_64

    .line 238
    :cond_99
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_74

    .line 240
    :cond_9d
    if-nez v7, :cond_ad

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->note:Landroid/widget/TextView;

    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0438\u0437\u0431\u0435\u0440\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u044a\u0442 \u0441\u0435 \u043f\u0430\u0437\u0438 \u0437\u0430 \u043d\u0435\u0433\u043e."

    const-string v2, "Pick a suit first \u2014 the standard is kept for it."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_ac
    return-void

    .line 243
    :cond_ad
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->mac:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/WiBridge;->isWiemsMac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 244
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->note:Landroid/widget/TextView;

    if-ne v0, v2, :cond_c5

    .line 245
    const-string v0, "WiEMS \u0441 XBody \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u043a\u0430\u043d\u0430\u043b\u0438\u0442\u0435, \u043f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u0438 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v2, "WiEMS with an X-Body suit \u2014 the channels checked on the body."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_c1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ac

    .line 247
    :cond_c5
    const-string v0, "WiEMS \u0441 XEMS \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0437\u043e\u043d\u0438\u0442\u0435 \u0441\u0435 \u043f\u0440\u0435\u043d\u0430\u0441\u043e\u0447\u0432\u0430\u0442 \u0441\u0430\u043c\u0438."

    const-string v2, "WiEMS with an XEMS suit \u2014 the zones are rerouted by themselves."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c1

    .line 249
    :cond_ce
    if-ne v0, v2, :cond_122

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v1

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u041a\u0430\u043d\u0430\u043b \u2192 \u043c\u0443\u0441\u043a\u0443\u043b:"

    const-string v4, "Channel \u2192 muscle:"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    new-array v4, v11, [I

    fill-array-data v4, :array_132

    .line 253
    :goto_e6
    if-ge v3, v11, :cond_118

    .line 254
    aget v5, v4, v3

    .line 255
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_112

    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->BG:[Ljava/lang/String;

    :goto_f2
    aget-object v0, v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u2192 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    if-eqz v1, :cond_115

    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->BG:[Ljava/lang/String;

    :goto_102
    sget-object v7, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    aget v5, v7, v5

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 255
    :cond_112
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->EN:[Ljava/lang/String;

    goto :goto_f2

    .line 256
    :cond_115
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->EN:[Ljava/lang/String;

    goto :goto_102

    .line 258
    :cond_118
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->note:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ac

    .line 260
    :cond_122
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Col;->note:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u0438\u0442\u0435 \u043a\u0430\u043d\u0430\u043b\u0438."

    const-string v2, "The standard channels."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ac

    .line 252
    nop

    :array_132
    .array-data 4
        0x4
        0x0
        0x1
        0x2
        0x6
        0x5
        0x7
        0x8
        0x9
        0x3
    .end array-data
.end method
