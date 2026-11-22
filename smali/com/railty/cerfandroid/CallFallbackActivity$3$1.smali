.class Lcom/railty/cerfandroid/CallFallbackActivity$3$1;
.super Ljava/lang/Object;
.source "CallFallbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CallFallbackActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/CallFallbackActivity$3;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CallFallbackActivity$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/railty/cerfandroid/CallFallbackActivity$3$1;->this$1:Lcom/railty/cerfandroid/CallFallbackActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity$3$1;->this$1:Lcom/railty/cerfandroid/CallFallbackActivity$3;

    iget-object v0, v0, Lcom/railty/cerfandroid/CallFallbackActivity$3;->this$0:Lcom/railty/cerfandroid/CallFallbackActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/CallFallbackActivity;->access$000(Lcom/railty/cerfandroid/CallFallbackActivity;)V

    return-void
.end method
