.class Lcom/railty/cerfandroid/LauncherActivity$25;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->BuildContainerBar(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$all:Ljava/util/List;

.field final synthetic val$initial:I


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1359
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput p2, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->val$initial:I

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->val$all:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1362
    iget p1, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->val$initial:I

    if-ne p3, p1, :cond_0

    return-void

    .line 1363
    :cond_0
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->val$all:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/railty/cerfandroid/Containers$Info;

    iget-object p2, p2, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V

    .line 1364
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/LauncherActivity;->recreate()V

    .line 1365
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1368
    return-void
.end method
