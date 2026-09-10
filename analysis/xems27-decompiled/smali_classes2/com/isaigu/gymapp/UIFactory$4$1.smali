.class Lcom/isaigu/gymapp/UIFactory$4$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UIFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/UIFactory$4;->customLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/UIFactory$4;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/UIFactory$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/UIFactory$4;

    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/UIFactory$4$1;->this$0:Lcom/isaigu/gymapp/UIFactory$4;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/UIFactory;->access$100()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->returnData()V

    .line 79
    invoke-static {}, Lcom/isaigu/gymapp/UIFactory;->access$100()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->dismiss()V

    .line 80
    return-void
.end method
