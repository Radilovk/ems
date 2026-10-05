.class final Lcom/isaigu/gymapp/bodytech/BtTestMode$Redraw;
.super Ljava/lang/Object;
.source "BtTestMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Redraw"
.end annotation


# instance fields
.field final m:Lcom/isaigu/gymapp/bodytech/BtTestMode;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTestMode;)V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode$Redraw;->m:Lcom/isaigu/gymapp/bodytech/BtTestMode;

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTestMode$Redraw;->m:Lcom/isaigu/gymapp/bodytech/BtTestMode;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtTestMode;->render()V

    .line 86
    return-void
.end method
