.class Lcom/railty/cerfandroid/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->ExitEmulator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;

.field final synthetic val$saveCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 643
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/MainActivity$12;->val$saveCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 645
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12;->val$saveCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$3800(Lcom/railty/cerfandroid/MainActivity;)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$3900(Lcom/railty/cerfandroid/MainActivity;)V

    .line 647
    :goto_0
    return-void
.end method
