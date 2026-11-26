.class final Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DivSlider"
.end annotation


# static fields
.field static final ARMS:I = 0x0

.field static final CALF:I = 0x1


# instance fields
.field private final kind:I

.field private final pcts:[I

.field private final readout:Landroid/widget/TextView;


# direct methods
.method constructor <init>(I[ILandroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->kind:I

    .line 234
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->pcts:[I

    .line 235
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->readout:Landroid/widget/TextView;

    .line 236
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .prologue
    .line 260
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->show(I)V

    .line 261
    if-eqz p3, :cond_14

    .line 262
    const/high16 v0, 0x42c80000    # 100.0f

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->pcts:[I

    aget v1, v1, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 263
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->kind:I

    if-nez v1, :cond_15

    .line 264
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->setArmsDivider(F)V

    .line 269
    :cond_14
    :goto_14
    return-void

    .line 266
    :cond_15
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->setCalfDivider(F)V

    goto :goto_14
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 273
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 277
    return-void
.end method

.method show(I)V
    .registers 13

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x25

    const/high16 v8, 0x42c80000    # 100.0f

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->pcts:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->pcts:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v2, v0, v1

    .line 240
    if-lt v2, v10, :cond_28

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->readout:Landroid/widget/TextView;

    const-string v1, "100% \u2014 \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u0432\u0441\u0438\u0447\u043a\u0438 \u0434\u0440\u0443\u0433\u0438 \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v2, "100% \u2014 the same as every other channel"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_27
    return-void

    .line 244
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% \u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0434\u0440\u0443\u0433\u0438\u0442\u0435 \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v3, "% of the strength the other channels get"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->kind:I

    if-nez v0, :cond_bd

    .line 246
    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_c0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441 400 \u00b5s: "

    const-string v5, "wide pulse 400 \u00b5s: "

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 248
    const/4 v0, 0x1

    :goto_61
    array-length v5, v3

    if-ge v0, v5, :cond_93

    .line 249
    aget v5, v3, v0

    int-to-float v6, v2

    div-float v6, v8, v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(IF)F

    move-result v5

    div-float v5, v8, v5

    .line 250
    const-string v6, " \u00b7 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u00b5s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 252
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u041f\u043e-\u0442\u0435\u0441\u043d\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u043d\u043e\u0441\u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0437\u0430\u0440\u044f\u0434, \u0437\u0430\u0442\u043e\u0432\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u0442 \u043f\u043e-\u0433\u043e\u043b\u044f\u043c \u0434\u044f\u043b."

    const-string v2, "\nA narrower pulse carries less charge, so the arms get a bigger share."

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_b6
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->readout:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    :cond_bd
    move-object v0, v1

    goto :goto_b6

    .line 246
    nop

    :array_c0
    .array-data 4
        0x190
        0xfa
        0x96
        0x64
    .end array-data
.end method
