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
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 269
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    .line 270
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    .line 271
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    const/16 v0, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    if-nez v3, :cond_1c

    .line 276
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v1

    mul-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChGain(II)V

    .line 287
    :goto_16
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 288
    return-void

    .line 277
    :cond_1c
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    if-ne v3, v2, :cond_3c

    .line 278
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v2

    .line 279
    if-nez v2, :cond_32

    if-lez p1, :cond_30

    .line 282
    :goto_2a
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChWidth(II)V

    goto :goto_16

    :cond_30
    move v0, v1

    .line 279
    goto :goto_2a

    .line 280
    :cond_32
    if-gez p1, :cond_38

    if-gt v2, v0, :cond_38

    move v0, v1

    goto :goto_2a

    .line 281
    :cond_38
    mul-int/lit8 v0, p1, 0xa

    add-int/2addr v0, v2

    goto :goto_2a

    .line 284
    :cond_3c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->what:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_42

    move v1, v2

    .line 285
    :cond_42
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;->ch:I

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setChHz(IZI)V

    goto :goto_16
.end method
