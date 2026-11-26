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
.field private final divs:[F

.field private final kind:I

.field private final readout:Landroid/widget/TextView;


# direct methods
.method constructor <init>(I[FLandroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->kind:I

    .line 201
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->divs:[F

    .line 202
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->readout:Landroid/widget/TextView;

    .line 203
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .prologue
    .line 226
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->show(I)V

    .line 227
    if-eqz p3, :cond_10

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->divs:[F

    aget v0, v0, p2

    .line 229
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->kind:I

    if-nez v1, :cond_11

    .line 230
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->setArmsDivider(F)V

    .line 235
    :cond_10
    :goto_10
    return-void

    .line 232
    :cond_11
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->setCalfDivider(F)V

    goto :goto_10
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 239
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 243
    return-void
.end method

.method show(I)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->divs:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->divs:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v3, v1, v2

    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_26

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->readout:Landroid/widget/TextView;

    const-string v1, "1:1 \u2014 \u043a\u0430\u0442\u043e \u0434\u0440\u0443\u0433\u0438\u0442\u0435 \u043a\u0430\u043d\u0430\u043b\u0438"

    const-string v2, "1:1 \u2014 like the other channels"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_25
    return-void

    .line 211
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00f7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->fmt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u0441\u0442\u044a\u043f\u043a\u0430 "

    const-string v4, " \u00b7 step "

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->fmt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u043e\u0442 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430\u0442\u0430"

    const-string v4, " % of a normal one"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->kind:I

    if-nez v1, :cond_b7

    .line 213
    const/4 v1, 0x4

    new-array v4, v1, [I

    fill-array-data v4, :array_ba

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    :goto_6f
    array-length v1, v4

    if-ge v0, v1, :cond_99

    .line 216
    if-nez v0, :cond_96

    const-string v1, ""

    :goto_76
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v6, v4, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u00b5s \u00f7"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v6, v4, v0

    .line 217
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(IF)F

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->fmt(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 216
    :cond_96
    const-string v1, " \u00b7 "

    goto :goto_76

    .line 219
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_b0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$DivSlider;->readout:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    :cond_b7
    move-object v0, v2

    goto :goto_b0

    .line 213
    nop

    :array_ba
    .array-data 4
        0x64
        0x96
        0xfa
        0x190
    .end array-data
.end method
