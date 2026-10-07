.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Leg"
.end annotation


# instance fields
.field final ch:I

.field final right:Z

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;ZI)V
    .registers 4

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 439
    iput-boolean p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->right:Z

    .line 440
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->ch:I

    .line 441
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 445
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->stopHold()V

    .line 447
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->right:Z

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->ch:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setLegChannel(ZI)V

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Leg;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 449
    return-void
.end method
