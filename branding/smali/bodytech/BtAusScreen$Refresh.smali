.class final Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;
.super Ljava/lang/Object;
.source "BtAusScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAusScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# instance fields
.field final s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;)V
    .registers 2

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    .line 497
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;->s:Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->refresh()V

    .line 502
    return-void
.end method
