.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Level"
.end annotation


# instance fields
.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V
    .registers 2

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 441
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(II)I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->level:I

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Level;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 447
    return-void
.end method
