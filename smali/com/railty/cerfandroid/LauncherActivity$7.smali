.class Lcom/railty/cerfandroid/LauncherActivity$7;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$7;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

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

    .line 331
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$7;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$700(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$7;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p2}, Lcom/railty/cerfandroid/LauncherActivity;->access$600(Lcom/railty/cerfandroid/LauncherActivity;)[[I

    move-result-object p2

    aget-object p2, p2, p3

    const/4 p3, 0x0

    aget p2, p2, p3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
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

    .line 335
    return-void
.end method
