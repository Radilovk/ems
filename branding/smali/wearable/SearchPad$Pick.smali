.class final Lcom/isaigu/gymapp/wearable/SearchPad$Pick;
.super Ljava/lang/Object;
.source "SearchPad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SearchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final pad:Lcom/isaigu/gymapp/wearable/SearchPad;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    .line 425
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;->name:Ljava/lang/String;

    .line 426
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 430
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Pick;->name:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/wearable/SearchPad;->picked(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->access$300(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V

    .line 432
    return-void
.end method
