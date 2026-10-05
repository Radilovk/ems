.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Group"
.end annotation


# instance fields
.field final ch:I

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V
    .registers 3

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 474
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->ch:I

    .line 475
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 479
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->ch:I

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setGroup(II)V

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 481
    return-void
.end method
