.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$Open;
.super Ljava/lang/Object;
.source "XemsHzTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsHzTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Open;->a:Landroid/app/Activity;

    .line 334
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Open;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->open(Landroid/app/Activity;)V

    .line 339
    return-void
.end method
