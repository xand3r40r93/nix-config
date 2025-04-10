let

  horizontal_gap = [
    {
      monitor.wqhd = {
        workspace = "[D]";
        windows = 1;
        value = 8;
      };
    }
    {
      monitor.wqhd = {
        windows = 1;
        value = 760;
      };
    }
    8
  ];

in
{

  services.aerospace.enable = true;

  services.aerospace.settings = {
    gaps = {
      outer = {
        top = 8;
        bottom = 8;
        left = horizontal_gap;
        right = horizontal_gap;
      };
      inner = {
        vertical = 8;
        horizontal = 8;
      };
    };

    workspace-to-monitor-force-assignment = {
      S = [
        "secondary"
        "main"
      ];
    };

    mode.main.binding = {
      # alt-h = "focus left";
      # alt-j = "focus down";
      # alt-k = "focus up";
      # alt-l = "focus right";
      shift-ctrl-alt-end = "layout tiles horizontal vertical";
      shift-ctrl-alt-home = "layout accordion horizontal vertical";
      #
      shift-ctrl-alt-left = "focus left";
      shift-ctrl-alt-down = "focus down";
      shift-ctrl-alt-up = "focus up";
      shift-ctrl-alt-right = "focus right";
      #
      shift-ctrl-cmd-left = "move left";
      shift-ctrl-cmd-down = "move down";
      shift-ctrl-cmd-up = "move up";
      shift-ctrl-cmd-right = "move right";
      #
      shift-ctrl-alt-pageDown = "resize smart -50";
      shift-ctrl-alt-pageUp = "resize smart +50";
      #
      shift-ctrl-alt-1 = "workspace 1";
      shift-ctrl-alt-2 = "workspace 2";
      shift-ctrl-alt-3 = "workspace 3";
      shift-ctrl-alt-4 = "workspace 4";
      shift-ctrl-alt-5 = "workspace 5";
      shift-ctrl-alt-6 = "workspace 6";
      shift-ctrl-alt-7 = "workspace 7";
      shift-ctrl-alt-8 = "workspace 8";
      shift-ctrl-alt-9 = "workspace 9";
      # shift-ctrl-alt-a = "workspace A";
      shift-ctrl-alt-b = "workspace B"; # Browser
      shift-ctrl-alt-c = "workspace C"; # Code
      shift-ctrl-alt-d = "workspace D"; # Design
      shift-ctrl-alt-e = "workspace E"; # Excel
      shift-ctrl-alt-f = "workspace F";
      shift-ctrl-alt-g = "workspace G"; # GPT
      shift-ctrl-alt-i = "workspace I";
      shift-ctrl-alt-m = "workspace M"; # Messenger
      shift-ctrl-alt-n = "workspace N"; # Notes
      shift-ctrl-alt-o = "workspace O";
      shift-ctrl-alt-p = "workspace P";
      shift-ctrl-alt-q = "workspace Q"; # Queries (Database)
      shift-ctrl-alt-r = "workspace R";
      shift-ctrl-alt-s = "workspace S"; # Sound
      shift-ctrl-alt-t = "workspace T"; # Terminal
      # shift-ctrl-alt-u = "workspace U";
      # shift-ctrl-alt-v = "workspace V";
      # shift-ctrl-alt-w = "workspace W";
      # shift-ctrl-alt-x = "workspace X";
      # shift-ctrl-alt-y = "workspace Y";
      # shift-ctrl-alt-z = "workspace Z";
      #
      shift-ctrl-cmd-1 = "move-node-to-workspace 1";
      shift-ctrl-cmd-2 = "move-node-to-workspace 2";
      shift-ctrl-cmd-3 = "move-node-to-workspace 3";
      shift-ctrl-cmd-4 = "move-node-to-workspace 4";
      shift-ctrl-cmd-5 = "move-node-to-workspace 5";
      shift-ctrl-cmd-6 = "move-node-to-workspace 6";
      shift-ctrl-cmd-7 = "move-node-to-workspace 7";
      shift-ctrl-cmd-8 = "move-node-to-workspace 8";
      shift-ctrl-cmd-9 = "move-node-to-workspace 9";
      shift-ctrl-cmd-a = "move-node-to-workspace A";
      shift-ctrl-cmd-b = "move-node-to-workspace B";
      shift-ctrl-cmd-c = "move-node-to-workspace C";
      shift-ctrl-cmd-d = "move-node-to-workspace D";
      shift-ctrl-cmd-e = "move-node-to-workspace E";
      shift-ctrl-cmd-f = "move-node-to-workspace F";
      shift-ctrl-cmd-g = "move-node-to-workspace G";
      shift-ctrl-cmd-i = "move-node-to-workspace I";
      shift-ctrl-cmd-m = "move-node-to-workspace M";
      shift-ctrl-cmd-n = "move-node-to-workspace N";
      shift-ctrl-cmd-o = "move-node-to-workspace O";
      shift-ctrl-cmd-p = "move-node-to-workspace P";
      shift-ctrl-cmd-q = "move-node-to-workspace Q";
      shift-ctrl-cmd-r = "move-node-to-workspace R";
      shift-ctrl-cmd-s = "move-node-to-workspace S";
      shift-ctrl-cmd-t = "move-node-to-workspace T";
      # shift-ctrl-cmd-u = "move-node-to-workspace U";
      # shift-ctrl-cmd-v = "move-node-to-workspace V";
      # shift-ctrl-cmd-w = "move-node-to-workspace W";
      # shift-ctrl-cmd-x = "move-node-to-workspace X";
      # shift-ctrl-cmd-y = "move-node-to-workspace Y";
      # shift-ctrl-cmd-z = "move-node-to-workspace Z";
      #
      shift-ctrl-alt-tab = "workspace-back-and-forth";
      # alt-shift-tab = "move-workspace-to-monitor --wrap-around next";
      shift-ctrl-alt-comma = "mode service";
    };

    mode.service.binding = {
      esc = [
        "reload-config"
        "mode main"
      ];
      r = [
        "flatten-workspace-tree"
        "mode main"
      ];
      f = [
        "layout floating tiling"
        "mode main"
      ];
      backspace = [
        "close-all-windows-but-current"
        "mode main"
      ];
      shift-ctrl-alt-left = [
        "join-with left"
        "mode main"
      ];
      shift-ctrl-alt-down = [
        "join-with down"
        "mode main"
      ];
      shift-ctrl-alt-up = [
        "join-with up"
        "mode main"
      ];
      shift-ctrl-alt-right = [
        "join-with right"
        "mode main"
      ];
    };

    on-window-detected = [
      {
        "if".app-name-regex-substring = "Rectangle Pro";
        run = [ "layout floating" ];
      }
      {
        "if".app-id = "org.keepassxc.keepassxc";
        run = [ "layout floating" ];
      }
      {
        "if".app-id = "com.macpaw.CleanMyMac4";
        run = [ "layout floating" ];
      }
      {
        "if".app-id = "com.dmitrynikolaev.numi";
        run = [ "layout floating" ];
      }
      # B
      {
        "if".app-id = "com.google.Chrome";
        run = "move-node-to-workspace B";
        check-further-callbacks = true;
      }
      # C
      {
        "if".app-id = "com.microsoft.VSCode";
        run = "move-node-to-workspace C";
      }
      # D
      {
        "if".app-id = "com.figma.Desktop";
        run = "move-node-to-workspace D";
      }
      # E
      {
        "if".app-id = "com.microsoft.Excel";
        run = "move-node-to-workspace E";
      }
      # G
      {
        "if".app-id = "com.openai.chat";
        run = "move-node-to-workspace G";
      }
      {
        "if".app-id = "com.anthropic.claudefordesktop";
        run = "move-node-to-workspace G";
      }
      # M
      {
        "if".app-id = "ru.keepcoder.Telegram";
        run = "move-node-to-workspace M";
        check-further-callbacks = true;
      }
      {
        "if".app-id = "ru.keepcoder.Telegram";
        "if".window-title-regex-substring = "^$";
        run = [ "layout floating" ];
      }
      {
        "if".app-id = "com.tdesktop.Telegram";
        run = "move-node-to-workspace M";
      }
      {
        "if".app-id = "net.whatsapp.WhatsApp";
        run = "move-node-to-workspace M";
      }
      # N
      {
        "if".app-id = "md.obsidian";
        run = "move-node-to-workspace N";
      }
      # Q
      {
        "if".app-id = "com.navicat.NavicatForMongoDB";
        run = [ "move-node-to-workspace Q" ];
      }
      {
        "if".app-name-regex-substring = "^Studio 3T$";
        run = [ "move-node-to-workspace Q" ];
      }
      # S
      {
        "if".app-id = "com.spotify.client";
        run = "move-node-to-workspace S";
      }
      # T
      {
        "if".app-id = "com.mitchellh.ghostty";
        run = [ "move-node-to-workspace T" ];
      }
    ];

  };

}
