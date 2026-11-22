.class Lcom/railty/cerfandroid/LauncherActivity$2;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 171
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$2;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$2;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 175
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$2;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$200(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 176
    return-void
.end method
