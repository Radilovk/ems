.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;
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
    name = "Param"
.end annotation


# static fields
.field static final GAIN:I = 0x0

.field static final HZ_MAIN:I = 0x2

.field static final HZ_SECOND:I = 0x3

.field static final WIDTH:I = 0x1


# instance fields
.field final ch:I

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V
    .registers 4

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 294
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    .line 295
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    .line 296
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 300
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    if-nez v1, :cond_19

    .line 301
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChGain(II)V

    .line 308
    :goto_13
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 309
    return-void

    .line 302
    :cond_19
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    if-ne v1, v0, :cond_2d

    .line 303
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v1

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/bodytech/BtFull;->stepUs(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(II)V

    goto :goto_13

    .line 305
    :cond_2d
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_42

    .line 306
    :goto_32
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v2

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/bodytech/BtFull;->stepHz(II)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChHz(IZI)V

    goto :goto_13

    .line 305
    :cond_42
    const/4 v0, 0x0

    goto :goto_32
.end method
