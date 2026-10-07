.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Name"
.end annotation


# instance fields
.field final ch:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;->ch:I

    .line 356
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 366
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;->ch:I

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setName(ILjava/lang/String;)V

    .line 367
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 359
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 362
    return-void
.end method
