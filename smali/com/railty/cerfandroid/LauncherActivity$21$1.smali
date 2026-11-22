.class Lcom/railty/cerfandroid/LauncherActivity$21$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$21;

.field final synthetic val$safeName:Ljava/lang/String;

.field final synthetic val$sizeMb:I


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$21;Ljava/lang/String;I)V
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

    .line 723
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$21;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$21$1;->val$safeName:Ljava/lang/String;

    iput p3, p0, Lcom/railty/cerfandroid/LauncherActivity$21$1;->val$sizeMb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 725
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$21;

    iget-object p1, p1, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$21$1;->val$safeName:Ljava/lang/String;

    iget v0, p0, Lcom/railty/cerfandroid/LauncherActivity$21$1;->val$sizeMb:I

    invoke-static {p1, p2, v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$2100(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;I)V

    .line 726
    return-void
.end method
