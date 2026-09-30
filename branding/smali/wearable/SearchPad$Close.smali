.class final Lcom/isaigu/gymapp/wearable/SearchPad$Close;
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
    name = "Close"
.end annotation


# instance fields
.field private final pad:Lcom/isaigu/gymapp/wearable/SearchPad;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/SearchPad;)V
    .registers 2

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Close;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    .line 446
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Close;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    # invokes: Lcom/isaigu/gymapp/wearable/SearchPad;->close()V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SearchPad;->access$400(Lcom/isaigu/gymapp/wearable/SearchPad;)V

    .line 451
    return-void
.end method
