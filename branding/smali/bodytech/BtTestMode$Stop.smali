.class final Lcom/isaigu/gymapp/bodytech/BtTestMode$Stop;
.super Ljava/lang/Object;
.source "BtTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stop"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;)V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode$Stop;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 110
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode$Stop;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTest;->stop()V

    .line 115
    return-void
.end method
