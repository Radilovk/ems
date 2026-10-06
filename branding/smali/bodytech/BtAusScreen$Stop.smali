.class final Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;
.super Ljava/lang/Object;
.source "BtAusScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAusScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stop"
.end annotation


# instance fields
.field final r:Lcom/isaigu/gymapp/bodytech/BtAusRun;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtAusRun;)V
    .registers 2

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;->r:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 510
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;->r:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->stop()V

    .line 515
    return-void
.end method
