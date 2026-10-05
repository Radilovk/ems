.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hold"
.end annotation


# instance fields
.field final ch:I

.field live:Z

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V
    .registers 4

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->live:Z

    .line 414
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 415
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->ch:I

    .line 416
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 420
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->live:Z

    if-nez v0, :cond_6

    .line 433
    :goto_5
    return-void

    .line 421
    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->ch:I

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tWave:I

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/BtBridge;->test(IIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 422
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 423
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->ch:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tWave:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    :goto_88
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 427
    :cond_93
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const-string v2, "no_suit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 428
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d bodytech \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u043e \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 427
    :goto_a3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iput-boolean v6, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Hold;->live:Z

    goto :goto_88

    .line 429
    :cond_a9
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044a\u0440\u0432\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u2014 \u0441\u043f\u0440\u0438 \u044f, \u0437\u0430 \u0434\u0430 \u0442\u0435\u0441\u0442\u0432\u0430\u0448"

    goto :goto_a3
.end method
