.class Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BindRunnable;
.super Ljava/lang/Object;
.source "BetaFeaturesUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "fragment"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .param p2, "root"    # Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BindRunnable;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BindRunnable;->root:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start
    iget-object v0, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BindRunnable;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils$BindRunnable;->root:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;->bindTrainScreenNow(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;)V
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :catch_all

    goto :goto_done

    :catch_all
    move-exception v0

    :goto_done
    return-void
.end method
