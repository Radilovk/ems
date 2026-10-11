.class final Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
.super Ljava/lang/Object;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chip"
.end annotation


# instance fields
.field final bar:Landroid/view/View;

.field final barFill:Landroid/view/View;

.field final name:Landroid/widget/TextView;

.field off:Z

.field sel:Z

.field private shown:Ljava/lang/String;

.field final value:Landroid/widget/TextView;

.field final view:Landroid/widget/LinearLayout;

.field yellow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 14

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 1118
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    .line 1119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1120
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1121
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1124
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1125
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1126
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1127
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1128
    invoke-static {p1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1129
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    const-string v3, "mipmap"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1131
    if-eqz v1, :cond_9c

    .line 1132
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1133
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1134
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1135
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1136
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1137
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    :cond_9c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1143
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    .line 1145
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1146
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p1, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    .line 1148
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1149
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1150
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1151
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v3, 0xaa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1152
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    .line 1153
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    .line 1154
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1158
    return-void
.end method


# virtual methods
.method set(IZZZ)V
    .registers 14

    .prologue
    const/16 v8, 0xcc

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1161
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    .line 1162
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    .line 1163
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1187
    :cond_3e
    :goto_3e
    return-void

    .line 1168
    :cond_3f
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1170
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v5, v0

    .line 1171
    if-eqz p3, :cond_c6

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1172
    :goto_52
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_c9

    invoke-static {v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1173
    :goto_5a
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1172
    invoke-static {v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1175
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    if-eqz p4, :cond_df

    const v1, 0x3ecccccd    # 0.4f

    :goto_6a
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1176
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    if-eqz p4, :cond_e1

    const-string v1, "\u0438\u0437\u043a\u043b."

    const-string v5, "off"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_79
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    if-eqz p2, :cond_f5

    move v1, v0

    :goto_81
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1178
    if-eqz p2, :cond_f8

    .line 1179
    :goto_86
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1181
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1182
    if-lez v1, :cond_fb

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_b7
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1183
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    if-gtz v1, :cond_3e

    .line 1185
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    goto/16 :goto_3e

    .line 1171
    :cond_c6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_52

    .line 1173
    :cond_c9
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    .line 1174
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 1173
    invoke-static {v1, v5, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_5a

    :cond_df
    move v1, v2

    .line 1175
    goto :goto_6a

    .line 1176
    :cond_e1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " %"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    .line 1177
    :cond_f5
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_81

    .line 1178
    :cond_f8
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_86

    :cond_fb
    move v0, v3

    .line 1182
    goto :goto_b7
.end method
