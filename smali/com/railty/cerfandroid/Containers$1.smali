.class Lcom/railty/cerfandroid/Containers$1;
.super Ljava/lang/Object;
.source "Containers.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/Containers;->List(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/railty/cerfandroid/Containers$Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/railty/cerfandroid/Containers$Info;Lcom/railty/cerfandroid/Containers$Info;)I
    .locals 0

    .line 78
    iget-object p1, p1, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 76
    check-cast p1, Lcom/railty/cerfandroid/Containers$Info;

    check-cast p2, Lcom/railty/cerfandroid/Containers$Info;

    invoke-virtual {p0, p1, p2}, Lcom/railty/cerfandroid/Containers$1;->compare(Lcom/railty/cerfandroid/Containers$Info;Lcom/railty/cerfandroid/Containers$Info;)I

    move-result p1

    return p1
.end method
