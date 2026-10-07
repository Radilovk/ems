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
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 399
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->ch:I

    .line 400
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 404
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->ch:I

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setGroup(II)V

    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 406
    return-void
.end method
