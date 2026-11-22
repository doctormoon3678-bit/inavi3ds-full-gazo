.class Lcom/railty/cerfandroid/LauncherActivity$4;
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

    .line 202
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$4;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 204
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$4;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$400(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p4, 0x8

    const/4 p5, 0x1

    if-ne p3, p5, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$4;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$500(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/Spinner;

    move-result-object p1

    if-ne p3, p5, :cond_1

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 206
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

    .line 207
    return-void
.end method
