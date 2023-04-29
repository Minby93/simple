package com.example.ascents.controller;

import com.example.ascents.entity.Alpinist;
import com.example.ascents.entity.Group;
import com.example.ascents.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class GroupController {
    private final GroupService groupService;

    @GetMapping("/group")
    public String groups(Model model){
        model.addAttribute("groups", groupService.listGroup());
        return "group";
    }

    @GetMapping("/group/{gId}")
    public String groupInfo(@PathVariable Long gId, Model model){
        model.addAttribute("group", groupService.getGroupById(gId));
        return "group-info";
    }
    @PostMapping("/group/create")
    public String createGroup(Group group){
        groupService.saveGroup(group);
        return "redirect:/group";
    }
    @PostMapping("/group/delete/{gId}")
    public String deleteGroup(@PathVariable Long gId){
        groupService.deleteGroup(gId);
        return "redirect:/group";
    }
}
