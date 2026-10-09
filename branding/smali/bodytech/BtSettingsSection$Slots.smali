.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Slots;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slots"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 2

    .prologue
    .line 361
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setSlots(Z)V

    .line 362
    return-void
.end method
