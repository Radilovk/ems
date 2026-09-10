.class Lcom/isaigu/gymapp/fragment/TrainFragment$13;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$content:[B


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 519
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$content:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$13;->val$content:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$600(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;B)V

    .line 522
    return-void
.end method
