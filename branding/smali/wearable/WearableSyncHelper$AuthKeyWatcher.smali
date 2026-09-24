.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AuthKeyWatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .prologue
    .line 1225
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorAuthKey(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1700(Ljava/lang/String;)V

    .line 1226
    return-void

    .line 1225
    :cond_a
    const-string v0, ""

    goto :goto_6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 1218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 1221
    return-void
.end method
