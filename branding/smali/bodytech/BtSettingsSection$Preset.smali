.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;
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
    name = "Preset"
.end annotation


# static fields
.field static final HZ:I = 0x0

.field static final US:I = 0x1

.field static final WAVE:I = 0x2


# instance fields
.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

.field final value:I

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V
    .registers 4

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 483
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->what:I

    .line 484
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->value:I

    .line 485
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 489
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 490
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->what:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tHz:I

    .line 493
    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 494
    return-void

    .line 491
    :cond_13
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tUs:I

    goto :goto_d

    .line 492
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->tWave:I

    goto :goto_d
.end method
