.class final Lcom/isaigu/gymapp/wearable/SearchPad$Key;
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
    name = "Key"
.end annotation


# instance fields
.field private final pad:Lcom/isaigu/gymapp/wearable/SearchPad;

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Key;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    .line 278
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Key;->value:Ljava/lang/String;

    .line 279
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 283
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Key;->pad:Lcom/isaigu/gymapp/wearable/SearchPad;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Key;->value:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/wearable/SearchPad;->press(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/SearchPad;->access$200(Lcom/isaigu/gymapp/wearable/SearchPad;Ljava/lang/String;)V

    .line 285
    return-void
.end method
