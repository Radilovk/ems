.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;
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
    name = "Gain"
.end annotation


# instance fields
.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V
    .registers 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 234
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .prologue
    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v0

    mul-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setGain(I)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 240
    return-void
.end method
