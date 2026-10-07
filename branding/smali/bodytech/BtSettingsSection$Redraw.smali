.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Redraw;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Redraw"
.end annotation


# instance fields
.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V
    .registers 2

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Redraw;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Redraw;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 322
    return-void
.end method
