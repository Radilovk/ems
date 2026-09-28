.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LimitSaver;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitSaver"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LimitSaver;->a:Landroid/app/Activity;

    .line 292
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    :try_start_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_13

    move-result v0

    .line 307
    :goto_d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LimitSaver;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThresholdFromField(Landroid/content/Context;I)V

    .line 308
    return-void

    .line 305
    :catch_13
    move-exception v1

    goto :goto_d
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 295
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 298
    return-void
.end method
