.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$Off;
.super Ljava/lang/Object;
.source "XemsHzTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsHzTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Off"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 2

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Off;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 361
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Off;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->stop()V

    .line 366
    return-void
.end method
