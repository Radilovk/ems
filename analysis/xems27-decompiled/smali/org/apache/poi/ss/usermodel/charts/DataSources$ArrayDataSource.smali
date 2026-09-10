.class Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource<TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public getFormulaString()Ljava/lang/String;
    .locals 2

    .line 101
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Literal data source can not be expressed by reference."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    .line 84
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public isNumeric()Z
    .locals 2

    .line 96
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;->elements:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method public isReference()Z
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$ArrayDataSource<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
